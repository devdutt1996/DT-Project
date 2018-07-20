package com.example.controller;



import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.CategoryDao;
import com.example.model.Category;

@Controller
public class CategoryController {
	
	
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value="/admin/category/list",method = RequestMethod.GET)
	public <Category> ModelAndView list() {
	   ModelAndView model = new ModelAndView("category/CategoryList");
		List list = categoryDao.listAllCategorys();
		 model.addObject("list",list);
		 
		 return model;
		
	}

	@RequestMapping(value="/admin/category/update/{id}",method = RequestMethod.GET)
	public ModelAndView update(@PathVariable("id") int id){
	    ModelAndView model = new ModelAndView("category/CategoryForm");
	  Category category = categoryDao.findCategoryById(id);
	      model.addObject("categoryForm",category);
	     
	    return model;
}
	@RequestMapping(value="/admin/category/delete/{id}",method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id") int id){
	   categoryDao.deleteCategory(id);
	   return new ModelAndView("redirect:/category/list") ;

	}
	@RequestMapping(value="/admin/category/add",method = RequestMethod.GET)
	public ModelAndView add(){
	    ModelAndView model = new ModelAndView("category/CategoryForm");
	  Category category = new Category();
	      model.addObject("categoryForm",category);
	     
	    return model;
	}
	@RequestMapping(value="/admin/category/save",method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("categoryform") Category category){
	   	categoryDao.saveOrUpdate(category); 
		
	    return new ModelAndView("redirect:/admin/category/list") ;
}
	
}
