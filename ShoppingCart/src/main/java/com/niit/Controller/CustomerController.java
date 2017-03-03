package com.niit.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CustomerDAO;
import com.niit.model.CustomerModel;

@Controller
public class CustomerController {
	
	@Autowired
	CustomerDAO customerdao;

	@RequestMapping(value="Register", method=RequestMethod.GET)
    public ModelAndView sendregister(@ModelAttribute("customer") CustomerModel customer) // (@PathVariable("user") String user, @PathVariable("password") String password)
	{																					//  (@RequestParam("user") String user
		ModelAndView mv=new ModelAndView("Register");
		return mv;
	}
	
	
	@RequestMapping(value="register", method=RequestMethod.POST)
    public String getCustomer(CustomerModel customer)
	{
		
		customerdao.addCustomer(customer);
	/*ModelAndView mv = new ModelAndView("Login", "customer", new CustomerModel());
		return mv;		
	*/	
		
		return "Login";
	}
	
	
}
