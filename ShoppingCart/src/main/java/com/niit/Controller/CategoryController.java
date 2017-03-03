package com.niit.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.model.CategoryModel;

@Controller
public class CategoryController {
	
	@Autowired
	CategoryDAO categorydao;

	@RequestMapping(value="Category", method=RequestMethod.GET)
    public ModelAndView sendcategory(@ModelAttribute("customer") CategoryModel category)
	{																					
		ModelAndView mv=new ModelAndView("Category");
		return mv;
	}
	
	
	@RequestMapping(value="category", method=RequestMethod.POST)
    public String getCustomer(CategoryModel category)
	{
		
		categorydao.addCategory(category);
	
		return "Home";
	}
	
	
}
