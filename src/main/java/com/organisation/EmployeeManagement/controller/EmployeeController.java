package com.organisation.EmployeeManagement.controller;

import java.util.List;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.organisation.EmployeeManagement.entity.Employee;
import com.organisation.EmployeeManagement.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	@Autowired
	EmployeeService employeeService;
		

	@RequestMapping("/list")
	public String employeeList(Model model) {
		List<Employee> emplist=employeeService.getAllEmployees();
		model.addAttribute("EmployeeList",emplist );
		return "employee-list";
	}
	
	@RequestMapping("/showForm")
	public String showForm(Model model) {
		Employee emp=new Employee();
		model.addAttribute("employee",emp);
		return "employee-form";
	}
	
	@RequestMapping("/addEmployee")
	public String addEmployeeDetails(@ModelAttribute("employee") @Valid Employee emp,BindingResult br,Model model) {
		if(br.hasErrors()) {
			System.out.println(br);
			return "employee-form";
		}
		else {
			employeeService.createEmployee(emp);
			return "redirect:/employee/list";
		}
	}
	
	@RequestMapping("/updateForm")
	public String updateEmployee(@RequestParam("employeeId")int id,Model model) {
		Employee emp=employeeService.getEmployeeById(id);
		model.addAttribute("employee",emp);
		return "employee-form";
	}
	
	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("employeeId")int id,Model model) {
		//System.out.println(id);
		employeeService.deleteEmployee(id);
		return "redirect:/employee/list";
	}
	
	@RequestMapping("/search")
	public String employeeSearch(@RequestParam("id") int id,Model model) {
		Employee emp=employeeService.getEmployeeById(id);
		if(emp==null) {
			model.addAttribute("id",id);
			return "search-error";
		}
		else {
			List<Employee> emplist=employeeService.search(id);
			model.addAttribute("emplist", emplist);
			return "search-result";
		}
	}
	
	@RequestMapping("/logout")
	public String log() {
		return "logout";
	}
}
