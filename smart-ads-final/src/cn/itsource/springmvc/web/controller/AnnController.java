package cn.itsource.springmvc.web.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cn.itsource.springmvc.web.frontItem.CompanyProduct;


@Controller //控制器controller
public class AnnController {
	@RequestMapping("/frontPage")
	public ModelAndView frontPage( ){
		//System.out.println(cp);
		ModelAndView mav=new ModelAndView();
		mav.setViewName("/frontPage");
		return mav;	
		//return null;
	}
	
	
	@RequestMapping("/frontPage/receive")
	public ModelAndView receive(CompanyProduct cp){
		System.out.println(cp.getAdditional_information());
		System.out.println("ffffffffffffffffffffff");
		return null;
	}
	
	
	
	@RequestMapping("/hello2")
	public ModelAndView hello2(){
		List<CompanyProduct> searchResult=new  LinkedList<>();
		CompanyProduct cp=new CompanyProduct();
		cp.setAdditional_information("aaa");
		cp.setCustomer_age("33");
		cp.setCustomer_income("444");
		cp.setPrice("999");
		cp.setProduct_property("333");
		cp.setPrice("333");
		searchResult.add(cp);
		
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("companyProducts", searchResult);
		mav.setViewName("/frontPage");
		return mav;		
	}

}
