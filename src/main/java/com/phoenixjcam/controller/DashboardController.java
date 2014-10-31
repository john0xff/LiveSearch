package com.phoenixjcam.controller;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DashboardController
{
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView mainPage()
	{
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("template");
//		modelAndView.addObject("workspace", "workspace/dashboard");
//		modelAndView.addObject("mainColumn", "../widgets/miniCalendar");

		// display simply jquery calendar and main tasks from db

		return modelAndView;
	}
}