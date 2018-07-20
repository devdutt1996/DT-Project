package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.productDao;
import com.example.model.Product;

@Controller
public class MainController {
	
	@Autowired
    productDao productDao;
	
	@RequestMapping(value="/home")
	public ModelAndView contactus() {
 
		ModelAndView model=new ModelAndView("webpages/hompage");
	    return model;
	
  }
	
	@RequestMapping(value="/404")
	public ModelAndView denied() {
 
		ModelAndView model=new ModelAndView("webpages/404");
	    return model;
	
  }
		@RequestMapping(value="/login1")
	public ModelAndView home() {
		ModelAndView model=new ModelAndView("customer/login1");
		return model;
		
	}
	
	@RequestMapping(value="/contectus2")
	public ModelAndView contectus() {
		ModelAndView model=new ModelAndView("webpages/contectus2");
		return model;
		
	}
	

	@RequestMapping(value = "/gallery")
	public ModelAndView gallery() {
		ModelAndView model = new ModelAndView("webpages/gallery");
		List list = productDao.listAllProducts();
    	model.addObject("pro_list",list);
		return model;
	}
	
	@RequestMapping(value = "/Breakroom")
	public ModelAndView Breakroom() {
		ModelAndView model = new ModelAndView("webpages/Breakroom");
		List list = productDao.listAllProducts();
    	model.addObject("pro_list",list);
		return model;
	}
	
	@RequestMapping(value = "viewsingleproduct/{pid}",method = RequestMethod.GET)
	public ModelAndView ViewSingleProduct(@PathVariable("pid") int id) {
		ModelAndView model = new ModelAndView("webpages/ViewSingleProduct");
		Product product = productDao.findProductById(id);
		model.addObject("product",product);
		return model;
	}
}

