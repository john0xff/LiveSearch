package com.phoenixjcam.links.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
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

	// search for links + 2 additional criteria http:// and www
	@Override
	public List<LinksModel> getLinksByInput(String searchKey, int limit)
	{
		// List<LinksModel> list = getCurrentSession().createQuery("FROM LinksModel").list();
		// List<LinksModel> list = DataUtilities.castList(LinksModel.class,
		// getCurrentSession().createQuery("from LinksModel").list());
		searchKey += "%";
		String searchKey1 = searchKey;
		String searchKey2 = "www." + searchKey;
		String searchKey3 = "http://www." + searchKey;
		String searchKey4 = "http://" + searchKey;

		@SuppressWarnings("unchecked")
		List<LinksModel> list = this
				.getCurrentSession()
				.createCriteria(LinksModel.class)
				.add(Restrictions.disjunction
						(Restrictions.like("linkAddress", searchKey1), 
						Restrictions.like("linkAddress", searchKey2),
						Restrictions.like("linkAddress", searchKey3),
						Restrictions.like("linkAddress", searchKey4)))
						.list();

		// .add( Restrictions.gt( "weight", new Float(minWeight) ) )
		// .addOrder( Order.asc("age") )

		return list;
	}

	@Override
	public List<LinksModel> getLinksByCategory(String searchKey, int limit)
	{
		
		
		return null;
	}

}
