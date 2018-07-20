package com.example.dao;

import java.util.List;

import com.example.model.Category;

public interface CategoryDao {
	  
	
	public List<Category> listAllCategorys();
	
	public void saveOrUpdate(Category category);
	 
	public Category findCategoryById(int id);
	
	public void deleteCategory(int id);
	
	
	

}
