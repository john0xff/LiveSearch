package com.phoenixjcam.links.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name = "links", catalog = "live_search")
public class LinksModel
{
	private int linkId;
	private String linkAddress;
	private String linkDescription;

	@Id
	@GeneratedValue
	@Column(name = "linkId", nullable = false)
	public int getLinkId()
	{
		return linkId;
	}

	public void setLinkId(int linkId)
	{
		this.linkId = linkId;
	}

	@Column(name = "linkAddress")
	public String getLinkAddress()
	{
		return linkAddress;
	}

	public void setLinkAddress(String linkAddress)
	{
		this.linkAddress = linkAddress;
	}

	@Column(name = "linkDescription")
	public String getLinkDescription()
	{
		return linkDescription;
	}

	public void setLinkDescription(String linkDescription)
	{
		this.linkDescription = linkDescription;
	}

}
