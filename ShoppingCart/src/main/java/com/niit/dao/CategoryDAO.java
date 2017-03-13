package com.niit.dao;

import java.util.List;

import com.niit.model.Category;

public interface CategoryDAO {
	
	public void addCategory(Category category);

	public List<Category> list();
	
	public void updateCategory(Category category);
	
	public void deleteCategory(Category category);

	public void deleteCategory(int id);

	public Category getCategoryById(int id);
	
	
	
}
