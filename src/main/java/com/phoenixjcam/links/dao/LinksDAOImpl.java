package com.phoenixjcam.links.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.phoenixjcam.data.utils.DataUtilities;
import com.phoenixjcam.links.model.LinksModel;

@Repository
public class LinksDAOImpl implements LinksDAO
{
	@Autowired
	private SessionFactory sessionFactory;

	private Session getCurrentSession()
	{
		return sessionFactory.getCurrentSession();
	}

	@Override
	public List<LinksModel> getLinks(String searchKey, int limit)
	{
		// List<LinksModel> list = getCurrentSession().createQuery("FROM LinksModel").list();
		List<LinksModel> list = DataUtilities.castList(LinksModel.class, getCurrentSession().createQuery("from LinksModel").list());

		return list;
	}

}
