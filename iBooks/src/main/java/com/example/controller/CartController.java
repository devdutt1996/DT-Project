package com.example.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.dao.*;
import com.example.model.Cart;
import com.example.model.Customer;
import com.example.model.CustomerOrder;
import com.example.model.Product;
import com.example.model.ShippingAddress;
import com.example.model.User;

@Controller
public class CartController {

	@Autowired
	CartDao cartDao;
	
	@Autowired
	productDao productDao;
	
	@RequestMapping(value = "/cart/addToCart/{pid}")
	public String addToCart(@PathVariable("pid") int id,@RequestParam("requestedQuantity") int requestedQuantity,@AuthenticationPrincipal Principal principal) {
		
		if( principal == null ) {
			return "customer/login";
		}
		
		String email = principal.getName();
		
		List<Cart> items = cartDao.listAllItems(email);
		
		Product product = productDao.findProductById(id);
		
		for(Cart item : items) {
			if(item.getProduct().getPid() == id) {
				item.setQuantity(requestedQuantity);
				item.setTotalPrice(requestedQuantity * product.getPrice());
				
				cartDao.saveOrUpdate(item);
				return "redirect:/cart/purchasedetails";
				
			}
			 
		}
		 
		Cart cart = new Cart();
		
		User user = cartDao.getUser(email);
		
		cart.setProduct(product);
		cart.setQuantity(requestedQuantity);
		cart.setUser(user);
		cart.setTotalPrice(requestedQuantity * product.getPrice());
		
		cartDao.saveOrUpdate(cart);
		return "redirect:/cart/purchasedetails";
	}
	
	@RequestMapping(value = "/cart/purchasedetails")
	public String getPurchaseDetails(@AuthenticationPrincipal Principal principal,Model model) {
		String email = principal.getName();
		List<Cart> cart = cartDao.listAllItems(email);
		model.addAttribute("cartItems",cart);
		return "cart/CartList";
	}
	
	@RequestMapping(value = "/cart/clearcart")
	public String clearCart(@AuthenticationPrincipal Principal principal) {
		
		String email = principal.getName();
		List<Cart> items = cartDao.listAllItems(email);
		for(Cart item: items) {
			cartDao.removeItem(item.getItemId());
			
		}
		return "redirect:/cart/purchasedetails";
	}
	
	
	@RequestMapping(value = "/deleteItem/{itemId}")
	public String deleteItem(@PathVariable("itemId") int itemId) {
		
		cartDao.removeItem(itemId);
		return "redirect:/cart/purchasedetails";
	}
	
	@RequestMapping(value = "/cart/shippingaddress")
	public String shipping(@AuthenticationPrincipal Principal principal,Model model) {
		
		String email = principal.getName();
		User user = cartDao.getUser(email);
		Customer customer = user.getCustomer();
		ShippingAddress shippingAddress = customer.getShippingaddress();
		model.addAttribute("shippingaddress",shippingAddress);
		return "cart/shippingaddress";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/cart/createorder")
	public String createOrder(@AuthenticationPrincipal Principal principal,Model model, @ModelAttribute ShippingAddress shippingAddress) {
		
		String email = principal.getName();
		User user = cartDao.getUser(email);
		Customer customer = user.getCustomer();
		customer.setShippingaddress(shippingAddress);
		user.setCustomer(customer);
		
		List <Cart> cartItems = cartDao.listAllItems(email);
		 
		for(Cart cart : cartItems) {
			
			Product product = cart.getProduct();
			if(product.getQuantity() - cart.getQuantity()<0) {
				cartDao.removeItem(cart.getItemId());
				model.addAttribute("productNA",product);
				return "cart/productNA";
			}
			
		}
		
		double grandTotal = 0;
		for(Cart cart : cartItems) {
			grandTotal = grandTotal + cart.getTotalPrice();
		}
		
		CustomerOrder customerOrder = new CustomerOrder();
		customerOrder.setUser(user);
		customerOrder.setGrandTotal(grandTotal);
		if(cartItems.size()>0) {
			customerOrder = cartDao.customerOrder(customerOrder);
		}
		
		
		for(Cart cart : cartItems) {
			Product product = cart.getProduct();
			product.setQuantity(product.getQuantity() - cart.getQuantity());
			productDao.saveOrUpdate(product);
			cartDao.removeItem(cart.getItemId());
		}
		model.addAttribute("customerorder", customerOrder);
		model.addAttribute("cartItems",cartItems);
		return "cart/orderDetails";
	}
	
	
}