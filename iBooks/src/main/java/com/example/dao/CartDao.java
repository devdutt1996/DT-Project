package com.example.dao;
import java.util.List;

import com.example.model.Cart;
import com.example.model.CustomerOrder;
import com.example.model.User;

public interface CartDao {
	
	public List<Cart> listAllItems(String email);
	
	public User getUser(String email);
	
	public void saveOrUpdate(Cart cart);
	
	public void removeItem(int itemId);
	
    public CustomerOrder customerOrder(CustomerOrder order);

	

}
