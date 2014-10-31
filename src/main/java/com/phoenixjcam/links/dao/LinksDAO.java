package com.phoenixjcam.links.dao;

import java.util.List;

import com.phoenixjcam.links.model.LinksModel;

public interface LinksDAO
{
	//public void addLink();
	
	//public void deleteLink(int linkId);
	
	//public List<LinksModel> getLinks(int limit);
	
	public List<LinksModel> getLinks(String searchKey, int limit);
}
