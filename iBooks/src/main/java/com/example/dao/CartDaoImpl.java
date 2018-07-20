package com.example.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.model.Cart;
import com.example.model.CustomerOrder;
import com.example.model.User;

@Repository
@Transactional
public class CartDaoImpl implements CartDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<Cart> listAllItems(String email) {
        Query query = getSession().createQuery("from Cart where user.email = ?");
        query.setString(0, email);
        List<Cart> items = query.list();
		return items;
	}

	public User getUser(String email) {
		User user  = (User) getSession().get(User.class, email);
		return user;
	}

	public void saveOrUpdate(Cart cart) {
		
		getSession().saveOrUpdate(cart);
		
		
	}

	public void removeItem(int itemId) {
		Cart cart = (Cart) getSession().get(Cart.class, itemId);
		getSession().delete(cart);
		
	}

	public CustomerOrder customerOrder(CustomerOrder order) {
		getSession().save(order);
		return order;
	}



	
}
