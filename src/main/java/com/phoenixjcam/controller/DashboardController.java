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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.phoenixjcam.links.model.LinksModel;
import com.phoenixjcam.links.service.LinksService;

@Controller
public class DashboardController
{
	@Autowired
	private LinksService linksService;
	
	@RequestMapping(value = "/links", method = RequestMethod.GET)
	public ModelAndView responseLinkPage()
	{
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.setViewName("links");

		return modelAndView;
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<LinksModel> linksByKeyXhr(@RequestParam String key)
	{
		List<LinksModel> linksList =  linksService.getLinksByInput(key, 10);
		
		return linksList;
	}
	
	@RequestMapping(value = "/category", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public List<LinksModel> linksByCategoryXhr(@RequestParam String key)
	{
		List<LinksModel> linksList =  linksService.getLinksByCategory(key, 10);
		
		return linksList;
	}
}