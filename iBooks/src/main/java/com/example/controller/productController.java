package com.example.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Customer;
import com.example.model.Product;

import com.example.dao.productDao;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
@Controller

public class productController {
	
    @Autowired
    productDao productDao;
    
    

    @RequestMapping(value = "/admin/product/list",method = RequestMethod.GET)
    public ModelAndView listProduct() {
    	ModelAndView model = new ModelAndView("product/productList");
    	List list = productDao.listAllProducts();
    	model.addObject("list",list);
    	return model;
    	
    }
    @RequestMapping(value="/admin/product/update/{id}",method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") int id){
	    ModelAndView model = new ModelAndView("product/productForm");
	  Product product  = productDao.findProductById(id);
	      model.addObject("productForm",product);
	      model.addObject("category",productDao.listAllCategory());
	     
	    return model;
    }
	    
	    @RequestMapping(value="/admin/product/delete/{id}",method = RequestMethod.GET)
		public ModelAndView delete(@PathVariable("id") int id){
		    productDao.deleteProduct( id);
		  return new ModelAndView("redirect:/admin/product/list");
    }
    
    @RequestMapping(value = "/admin/product/add",method = RequestMethod.GET)
    public ModelAndView addproduct() {
    	ModelAndView model = new ModelAndView("product/productForm");
    	Product  product = new Product();
    	model.addObject("productForm",product);
    	model.addObject("category", productDao.listAllCategory());
    	return model;
    }
    
    @RequestMapping(value = "/admin/product/save",method = RequestMethod.POST)
    public ModelAndView saveProduct(@Valid @ModelAttribute("productForm") Product product,BindingResult br,HttpSession session) throws IOException{
    	
    	if(br.hasErrors()) {
    		ModelAndView model = new ModelAndView("product/productForm");
    		model.addObject("productForm",product);
    		model.addObject("category",productDao.listAllCategory());
    		return model;
    	}
    	
    	productDao.saveOrUpdate(product);
    	
    	ServletContext context = session.getServletContext();
    	String path = context.getRealPath("/");
    	
    	System.out.println("Path: "+path);
    	
    	File file = new File(path +"/resources/images/" + product.getPid() + ".jpg");
    	try {
    		byte arr[] = product.getFile().getBytes();
    		BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(file));
    		out.write(arr);
    		out.close();
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	product.setImageUrl("images/" + product.getPid() + ".jpg");
    	System.out.println("Path = " +path);
    	System.out.println("File = " + file);
    	System.out.println("URL =" + product.getImageUrl());
    	
    	productDao.saveOrUpdate(product);
    	return new ModelAndView("redirect:/admin/product/list");
    }
}
         
         
        	 
        	 
        	 
                 	 
        	 
        	
        	 
    
    	
    

