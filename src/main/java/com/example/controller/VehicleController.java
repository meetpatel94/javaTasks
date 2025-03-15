package com.example.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.entity.UserEntity;
import com.example.entity.VehicleEntity;
import com.example.repository.VehicleRepository;

import jakarta.servlet.http.HttpSession;



@Controller
public class VehicleController {

	@Autowired
	VehicleRepository repositoryVehicle;

	@GetMapping("newvehicle")
	public String newVehicle() {
		return "NewVehicle";
	}

	@PostMapping("savevehicle")
	public String saveVehicle(VehicleEntity entityVehicle, HttpSession session) {
		
		UserEntity user = (UserEntity)session.getAttribute("user"); //==> object
		Integer userId = user.getUserId();
		entityVehicle.setUserId(userId);
	    
		repositoryVehicle.save(entityVehicle);

		return "redirect:/listvehicle";
	}
 
	@GetMapping("listvehicle")
	public String listVehicle(Model model) {
		List<Object[]> listVehicle = repositoryVehicle.getAll();
		model.addAttribute("allVehicle", listVehicle);
		return "ListVehicle";
	}
	
	@GetMapping("viewvehicle")
	public String vehicle(Integer vehicleId,Model model) {
		List<Object[]> op = repositoryVehicle.getByVehicleId(vehicleId);
			
	    model.addAttribute("vehicle", op);
	    return "ViewVehicle";		
	}
	
	@GetMapping("editvehicle")
	public String editvehicle(Integer vehicleId,Model model) {
		
		Optional<VehicleEntity> op = repositoryVehicle.findById(vehicleId);
		if(op.isEmpty()) {
			return "redirect:/listvehicle";
			
		}else {
			model.addAttribute("vehicle", op.get());
			return "EditVehicle";
		}	
	}
	
//	case:1 when save -> entity -> no id present -> insert
//  case:2 when save -> entity -> id present -> not present in database -> insert
//  case:3 when save -> entity -> id present -> present in database -> update
	
	@PostMapping("updatevehicle")
	public String updatevehicle(VehicleEntity entity) {
		System.out.println(entity.getVehicleId());
		
		
		Optional<VehicleEntity> op = repositoryVehicle.findById(entity.getVehicleId());
		
		if(op.isPresent()) {
			
			VehicleEntity dbvehicle = op.get();
			
			dbvehicle.setParkingCode(entity.getParkingCode());
			dbvehicle.setVehicleType(entity.getVehicleType());
			dbvehicle.setVehicleNo(entity.getVehicleNo());
			repositoryVehicle.save(entity);
		}
		
		return "redirect:/listvehicle";
	}
}
