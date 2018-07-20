package com.example.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import com.example.dao.CustomerDao;
import com.example.model.Customer;



@Controller
@RequestMapping(value="customer")
public class CustomerController {
    

	@Autowired
	CustomerDao customerDao;
	
	@RequestMapping(value = "/register")
	public ModelAndView register() {
		
		return new ModelAndView("customer/form","customer",new Customer());
	}
	
	@RequestMapping(value = "/save")
	public ModelAndView save(@ModelAttribute("customer") Customer customer) {
		
		customerDao.regsiterCustomer(customer);
		return new ModelAndView("redirect:/customer/login");
		
	}
	 
	@RequestMapping(value = "/login")
	public ModelAndView login() {
		ModelAndView model = new ModelAndView("customer/login");
		return model;
		
	}
	
}