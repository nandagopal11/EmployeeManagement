package com.organisation.EmployeeManagement.service;

import java.util.List;

import com.organisation.EmployeeManagement.entity.Employee;

public interface EmployeeService {

	List<Employee> getAllEmployees();

	void createEmployee(Employee emp);

	Employee getEmployeeById(int id);

	void deleteEmployee(int id);

	List<Employee> search(int id);

}
