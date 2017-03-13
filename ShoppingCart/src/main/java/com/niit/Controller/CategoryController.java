package com.niit.Controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
			return mv;
		}
		
		@RequestMapping(value="save", method=RequestMethod.POST)
		public String addCategory(Category category)
		{
			
			categorydao.addCategory(category);
			return "ViewCategory";
		}
		
		
		@RequestMapping(value="ViewCategory", method=RequestMethod.GET)
		public ModelAndView ListCategory()
		{
			
			ModelAndView mv=new ModelAndView("ViewCategory");
			List<Category> list= categorydao.list();
			mv.addObject("categoryList", list);
			
			
			return mv;
		}
		
				
		@RequestMapping(value="EditCategory",method=RequestMethod.GET)
		public ModelAndView editcategory(@ModelAttribute("editcategory") Category category)
		{
			ModelAndView mv=new ModelAndView("EditCategory");
			return mv;
		}
		
		/*/
		@RequestMapping(value="editcategory/{id}")
		public ModelAndView edit(@PathVariable int id){
			Category category=categorydao.getCategoryById(id);
			return new ModelAndView("EditCategory","command",category);
		}
		/*/
		
	    @RequestMapping(value="editsave",method = RequestMethod.POST)
		public ModelAndView editsave(@ModelAttribute("category") Category category){
			categorydao.updateCategory(category);
			return new ModelAndView("redirect:ViewCategory");
		}
		@RequestMapping(value="deletecategory/{id}",method = RequestMethod.GET)
		public ModelAndView delete(@ModelAttribute("category") Category category){
			categorydao.deleteCategory(category);
			return new ModelAndView("redirect:ViewCategory");
		}
		
		

}
		

