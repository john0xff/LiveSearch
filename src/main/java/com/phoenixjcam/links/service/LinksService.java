package com.phoenixjcam.links.service;

import java.util.List;

import com.phoenixjcam.links.model.LinksModel;

public interface LinksService
{
	public List<LinksModel> getLinksByInput(String searchKey, int limit);
	
	public List<LinksModel> getLinksByCategory(String categoryKey, int limit);
}
