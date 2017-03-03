package com.niit.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public ModelAndView showHomepage()
	{
		System.out.println("Starting the method showHomepage");
		//Specifying which page you have navigation
		ModelAndView mv = new ModelAndView("Home");
		
		//Specifying what data you have to carry to homepage
		
		mv.addObject("msg", "WELCOME TO SHOPPING CART");
		
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
			mv.addObject("fgmsg", "Password Changed Successfully");		
			
		    return mv;
		}	
	
	@RequestMapping("Home")
	public ModelAndView showHome()
	{
		System.out.println("Back To Homepage");
		//Specifying which page you have navigation
		ModelAndView mv = new ModelAndView("Home");
		
		//Specifying what data you have to carry to homepage
		
			
		return mv;
	}
	
	@RequestMapping("Login")
	public ModelAndView showLoginpage()
	{
		System.out.println("Clicked on Login link");
		ModelAndView mv = new ModelAndView("Login");
		mv.addObject("isUserClickedLogin","true" );
		
		return mv;
	}
	
	@RequestMapping("validate")
	public ModelAndView validateCredentials(@RequestParam("user") String id, @RequestParam("password") String pwd)
	{
		ModelAndView  mv = new ModelAndView("Home");
		
		if(id.equals("niit") && pwd.equals("niit@123"))
		{
			
			mv.addObject("loginMessage", "Valid Credentials");
		}
		else
		{
			mv.addObject("loginMessage", "Invalid Credentials...please try again");
		}	
		    return mv;
		}	
	
    
}