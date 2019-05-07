package com.calculate_tax.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.calculate_tax.dao.CustomerDAO;
import com.calculate_tax.entities.Customer;

@Service
@Transactional
public class CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
	
	public List<Customer> findAll() {
		return customerDAO.findAll();
	}

	public Customer findById(int id) {
		return customerDAO.findById(id);
	}

	public Customer login(String name, String password) {
		return customerDAO.login(name, password);
	}

	public void save(Customer customer){
		// validate business
		customerDAO.save(customer);
	}

	public void signup(Customer customer){
		// validate business
		customerDAO.signup(customer);
	}

	public void update(Customer customer){
		// validate business
		customerDAO.update(customer);
	}
	
	public void delete(int id){
		// validate business
		customerDAO.delete(id);
	}
}
