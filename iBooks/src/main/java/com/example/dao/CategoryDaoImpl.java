package com.example.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.model.Category;

@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao {
	
	
	
       @Autowired
       private SessionFactory sessionFactory;

       private Session getSession(){
    	   return sessionFactory.getCurrentSession();
    	   
       }
       
       @SuppressWarnings("unchecked")
       public List<Category> listAllCategorys(){
    	   Criteria criteria = getSession().createCriteria(Category.class);
    	   return(List<Category>) criteria.list();
    	   
       }
       
       public void saveOrUpdate(Category category) {
    	   getSession().saveOrUpdate(category);
    	   
       }
       
       public Category findCategoryById(int id) {
    	   Category category =(Category) getSession().get(Category.class,id);
    	   return category;
       }
       
       public void deleteCategory(int id) {
    	   Category category=(Category) getSession().get(Category.class,id);
	       getSession().delete(category);
}




}
