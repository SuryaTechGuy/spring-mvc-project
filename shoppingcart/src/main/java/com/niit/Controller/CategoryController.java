package com.niit.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@Controller
public class CategoryController {
	@Autowired
		CategoryDAO categorydao;
		
		@RequestMapping(value="Category",method=RequestMethod.GET)
		public ModelAndView sendcategory(@ModelAttribute("category") Category category)
		{
			ModelAndView mv=new ModelAndView("Category");
			
			List<Category> list= categorydao.list();
			mv.addObject("categoryList", list);
			return mv;
		}
		
		@RequestMapping(value="save", method=RequestMethod.POST)
		public ModelAndView addCategory(Category category,Model model)
         {
			
			ModelAndView mv=new ModelAndView("Category");
			categorydao.addCategory(category);
			List<Category> list= categorydao.list();
			model.addAttribute("categoryList", list);
			
			return mv;
		
		}

		@RequestMapping(value = "editcategory", method = RequestMethod.GET) 
		public ModelAndView editCategory(@RequestParam("categoryId") String categoryId) {
			ModelAndView model = new ModelAndView("Category", "category", new Category());
			model.addObject("list", categorydao.list());
			model.addObject("values", categorydao.getCategoryById(categoryId));
			System.out.println("EditCategory Controller Passed");
			System.out.println(categorydao.getCategoryById(categoryId));
			List<Category> list= categorydao.list();
			model.addObject("categoryList", list);
				return model;
		}
		
		@RequestMapping(value = "deletecategory", method = RequestMethod.GET) 
		public String deleteCategory(@RequestParam("categoryId") String categoryId, Model model) {
			System.out.println("Delete Controller Reached");
			categorydao.deleteCategory(categoryId);
			List<Category> list= categorydao.list();
			model.addAttribute("categoryList", list);
			
			return "Category";

		}

	}		