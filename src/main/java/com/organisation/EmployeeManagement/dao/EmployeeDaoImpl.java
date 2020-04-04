package com.organisation.EmployeeManagement.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.organisation.EmployeeManagement.entity.Employee;

@Repository
public class EmployeeDaoImpl implements EmployeeDao{

	@Autowired
	private SessionFactory factory;
	
	public List<Employee> getAllEmployees() {
		Session sess=factory.getCurrentSession();
		Query<Employee> query=sess.createQuery("from Employee",Employee.class);
		List<Employee> emplist=query.getResultList();
		return emplist;
	}

	public void createEmployee(Employee emp) {
		Session sess=factory.getCurrentSession();
		sess.saveOrUpdate(emp);
		System.out.println("inserted");
	}

	public Employee getEmployeeById(int id) {
		Session sess=factory.getCurrentSession();
		return sess.get(Employee.class, id);
		
	}

	public void deleteEmployee(int id) {
		Session sess=factory.getCurrentSession();
		
		Query<Employee> query=sess.createQuery("delete from Employee where employee_id=:employeeId");
		query.setParameter("employeeId", id);
		query.executeUpdate();
		System.out.println("deleted");
		
	}

	public List<Employee> search(int id) {
		Session sess=factory.getCurrentSession();
		Query<Employee> query=sess.createQuery("from Employee where employee_id=:employeeId",Employee.class);
		query.setParameter("employeeId", id);
		List<Employee> emplist=query.getResultList();
		System.out.println(emplist);
		return emplist;
	}

}
