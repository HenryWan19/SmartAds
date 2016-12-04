package cn.itsource.springmvc.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;


public class HelloWorldController implements Controller{

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.addObject("msg","你好");
		modelAndView.setViewName("/helloworld.jsp");

		return modelAndView;
	}



	

}
