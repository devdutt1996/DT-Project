package com.example.dao;

import java.util.List;

import com.example.model.Category;
import com.example.model.Product;


public interface productDao {
	
	public  List<Product> listAllProducts();
	
	public void saveOrUpdate(Product product);
	
	public void deleteProduct(int id);
	
	public Product findProductById(int id);
	
	public List<Category> listAllCategory();
}
