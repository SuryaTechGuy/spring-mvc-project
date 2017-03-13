package com.niit.Controller;
 

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierdao;

	@RequestMapping(value="Supplier", method=RequestMethod.GET)
    public ModelAndView sendcategory(@ModelAttribute("supplier") Supplier supplier)
	{																					
		ModelAndView mv=new ModelAndView("Supplier");
		return mv;
	}
	
	
	@RequestMapping(value="supplier", method=RequestMethod.POST)
    public String getSupplier(Supplier supplier)
	{
		
		supplierdao.addSupplier(supplier);
	
		return "Home";
	}
}
	