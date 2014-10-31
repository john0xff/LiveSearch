package com.phoenixjcam.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.phoenixjcam.links.model.LinksModel;
import com.phoenixjcam.links.service.LinksService;

@Controller
public class DashboardController
{
	@Autowired
	private LinksService linksService;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView mainPage()
	{
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("template");
		
		List<LinksModel> linksList =  linksService.getLinks("", 10);
		
		modelAndView.addObject("linksList", linksList);

		return modelAndView;
	}
	
	@RequestMapping(value = "/linksJson", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<LinksModel> getJsonLinks()
	{
		List<LinksModel> linksList =  linksService.getLinks("", 10);
		
		
		return linksList;
	}
	
	@RequestMapping(value = "/linksXml", method = RequestMethod.GET, produces = MediaType.APPLICATION_XML_VALUE)
	@ResponseBody
	public List<LinksModel> getXmlLinks()
	{
		List<LinksModel> linksList =  linksService.getLinks("", 10);
		
		
		return linksList;
	}
}