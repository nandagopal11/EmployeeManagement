package com.organisation.EmployeeManagement.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.organisation.EmployeeManagement.dao.EmployeeDao;
import com.organisation.EmployeeManagement.entity.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	EmployeeDao employeeDao;


	@Transactional
	public List<Employee> getAllEmployees() {
		return employeeDao.getAllEmployees();
	}

	@Transactional
	public void createEmployee(Employee emp) {
		employeeDao.createEmployee(emp);
	}

	@Transactional
	public Employee getEmployeeById(int id) {
		return employeeDao.getEmployeeById(id);
	}
	
	@Transactional
	public void deleteEmployee(int id) {
		employeeDao.deleteEmployee(id);
	}

	@Transactional
	public List<Employee> search(int id) {
		return employeeDao.search(id);
	}

}
