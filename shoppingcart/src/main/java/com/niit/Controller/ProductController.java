package com.niit.Controller;
 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productdao;

	@RequestMapping(value="Product", method=RequestMethod.GET)
    public ModelAndView sendcategory(@ModelAttribute("product") Product product)
	{																					
		ModelAndView mv=new ModelAndView("Product");
		return mv;
	}
	
	
	@RequestMapping(value="product", method=RequestMethod.POST)
    public String getProduct(Product product)
	{
		
		productdao.addProduct(product);
	
		return "Home";
	}
}
	