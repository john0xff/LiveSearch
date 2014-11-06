package com.phoenixjcam.links.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.phoenixjcam.links.dao.LinksDAO;
import com.phoenixjcam.links.model.LinksModel;


@Service
@Transactional
public class LinksServiceImpl implements LinksService
{
	@Autowired
	private LinksDAO linksDAO;
	
	@Override
	public List<LinksModel> getLinksByInput(String searchKey, int limit)
	{
		return linksDAO.getLinksByInput(searchKey, limit);
	}

}
