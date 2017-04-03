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
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productdao;
	@Autowired
	private CategoryDAO categorydao;

	@Autowired
	private SupplierDAO supplierdao;

	@RequestMapping(value="Product", method=RequestMethod.GET)
    public ModelAndView sendproduct(@ModelAttribute("Product") Product product,Model model)
	{																					
		List<Product> plist=productdao.plist();
		List<Category> list = categorydao.list();
		List<Supplier> slist =  supplierdao.slist();
		ModelAndView mv=new ModelAndView("Product");
		mv.addObject("productList",plist);
		mv.addObject("category_dropdown",list);
		mv.addObject("supplier_dropdown",slist);
		
		return mv;
    }
	
	
	@RequestMapping(value="saveproduct", method=RequestMethod.POST)
    public ModelAndView getProduct(Product product)
	{
		
		productdao.addProduct(product);
		List<Product> plist=productdao.plist();
		ModelAndView mv=new ModelAndView("Product");
		mv.addObject("productList",plist);
		return mv;
	}
	
	@RequestMapping(value = "editproduct", method = RequestMethod.GET) 
	public ModelAndView editCategory(@RequestParam("productId") String productId) {
		ModelAndView model = new ModelAndView("Product", "product", new Product());
		List<Product> plist=productdao.plist();
		model.addObject("productList",plist);
		model.addObject("values", productdao.getProductById(productId));
		List<Category> list= categorydao.list();
		model.addObject("category_dropdown", list);
		List<Supplier> slist= supplierdao.slist();
		model.addObject("supplier_dropdown", slist);	
		System.out.println("EditProduct Controller Passed");
		return model;
	}
	
	@RequestMapping(value = "deleteproduct", method = RequestMethod.GET) 
	public String deleteCategory(@RequestParam("productId") String productId, Model model) {
		System.out.println("Delete Product Controller Reached");
		productdao.deleteProduct(productId);
		List<Product> list= productdao.plist();
		model.addAttribute("productList", list);
		System.out.println("Delete Product Controller Passed");
		return "Product";

	}


}
	