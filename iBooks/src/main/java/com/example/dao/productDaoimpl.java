package com.example.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.model.Product;
import com.example.model.Category;
import com.example.model.Customer;

@Repository
@Transactional
public class productDaoimpl implements productDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> listAllProducts() {
		Criteria criteria = getSession().createCriteria(Product.class);
		return (List<Product>) criteria.list();
	}

	public void saveOrUpdate(Product product) {
		getSession().saveOrUpdate(product);
		
	}

	public void deleteById(int id) {
		Product product = (Product) getSession().get(Product.class, id);
		getSession().delete(product);
	}

	public Product findProductById(int id) {
		Product product =(Product) getSession().get(Product.class,id);
		return product;
		
	}

	public void deleteProduct(int id) {
		Product product = (Product) getSession().get(Product.class, id);
		getSession().delete(product);
	}

	@SuppressWarnings("unchecked")
	public List<Category> listAllCategory() {
		
		return getSession().createQuery("from Category").list();
	}
	
	

}
