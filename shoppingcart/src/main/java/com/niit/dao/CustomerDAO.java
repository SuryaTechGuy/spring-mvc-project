package com.niit.dao;

import java.util.List;

import com.niit.model.Customer;

public interface CustomerDAO {

	public void addCustomer(Customer customer);
	public List<Customer> validate(Customer customer);
	
}
