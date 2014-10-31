package com.phoenixjcam.data.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class DataUtilities
{
	public static <T> List<T> castList(Class<? extends T> clazz, Collection<?> collection)
	{
		List<T> list = new ArrayList<T>(collection.size());
		
		for (Object object : collection)
		{
			list.add(clazz.cast(object));
		}
		
		return list;
	}
}
