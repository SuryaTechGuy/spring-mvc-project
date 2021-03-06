package com.niit.Controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CustomerDAO;
import com.niit.model.Customer;

@Controller
public class HomeController {
	
	
	@Autowired
	CustomerDAO  customerdao;
	
	 @RequestMapping("/")
	public ModelAndView showHomepage()
	{
		System.out.println("Starting the method showHomepage");
		ModelAndView mv = new ModelAndView("Home");
		mv.addObject("msg", "WELCOME TO SHOPPING CART");
		return mv;
	}
	
	@RequestMapping("Error")
	public ModelAndView showErrorpage()
	{
		System.out.println("Show Error page");
		ModelAndView mv = new ModelAndView("Error");
		return mv;
	}
	
	
	@RequestMapping("ForgotPassword")
	public ModelAndView showForgotpage()
	{
		System.out.println("show ForgotPassword page");
		ModelAndView mv = new ModelAndView("ForgotPassword");
			
		return mv;
	}
	
	@RequestMapping("forgot")
	public ModelAndView validateCredentials(@RequestParam("user") String id, @RequestParam("password") String pwd,@RequestParam("number") String num)
	{
		ModelAndView  mv = new ModelAndView("Login");
	    return mv;
		}	
	
	@RequestMapping("Home")
	public ModelAndView showHome()
	{
		System.out.println("Back To Homepage");
		ModelAndView mv = new ModelAndView("Home");
		return mv;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "loginsuccess")
	public String login_session_attributes(HttpSession session,Model model) 
	{
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		
		String role="ROLE_USER";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 
		    	 session.setAttribute("LoggedIn", true);
		    	 session.setAttribute("Username", userid);
		    	 page="Home";
		    	 
		    	 break;
		     }
		     else 
		     {
		    	 session.setAttribute("LoggedIn", true);
		    	 session.setAttribute("Administrator", "true");
		    	 page="Admin";
		    	 break;
		    }
		}
		return page;
	}

	@RequestMapping("Login")
	public ModelAndView showLoginpage(){
		
	{
		System.out.println("Clicked on Login link");
		ModelAndView mv = new ModelAndView("Login");
		return mv;
	}
}
	@RequestMapping("validate")
	public ModelAndView validateCredentials(Customer customer, @RequestParam("username") String id, @RequestParam("password") String pwd)
	{
		String msg;
		ModelAndView  mv = new ModelAndView("Home");
		System.out.println(customer);
		List<Customer> customerList=customerdao.validate(customer);
		if(customerList.size()==0){
			System.out.println("invalid user");
			msg="Invalid User Credentials";
		}
		else{
			System.out.println("valid user");
			msg="Valid User Credentials";
		}
		mv=new ModelAndView("Login","result",msg);
		 return mv;
		}

	@RequestMapping("Footer")
	public ModelAndView showFooterpage()
	{
		ModelAndView mv = new ModelAndView("Footer");
		return mv;
	}
}	