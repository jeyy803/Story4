package com.example.spring02.exam;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring02.service.exam.exam11Service;

@Controller
@RequestMapping("exam/*")
public class exam11Controller {
	
	@Inject
	exam11Service exam11Service;
	
	@RequestMapping("book_list.do")
	public ModelAndView list(ModelAndView mav) {
		mav.setViewName("/exam/exam11");
		System.out.println(exam11Service.listBook());
		mav.addObject("list",exam11Service.listBook());
		return mav;
	}

}
