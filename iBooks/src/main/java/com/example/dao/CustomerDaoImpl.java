package com.example.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.model.Authorities;
import com.example.model.Customer;



@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {
	
	
    @Autowired
    private SessionFactory sessionFactory;
    
    private Session getSession(){
    	return sessionFactory.getCurrentSession();
    }

	public void regsiterCustomer(Customer customer) {
		customer.getUser().setEnabled(true);
		
		Authorities authorities = new Authorities();
		authorities.setRole("ROLE_USER");
		authorities.setUser(customer.getUser());

		customer.getUser().setAuthorities(authorities);
		getSession().saveOrUpdate(customer);
		
	}

	public boolean isEmailUnique(String email) {
		// TODO Auto-generated method stub
		return false;
	}




}