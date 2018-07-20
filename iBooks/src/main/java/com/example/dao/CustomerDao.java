package com.example.dao;


import java.util.List;


import com.example.model.Customer;


public interface CustomerDao {
	

	public void regsiterCustomer(Customer customer);
	
	public boolean isEmailUnique(String email);
       
}