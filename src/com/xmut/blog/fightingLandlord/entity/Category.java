package com.xmut.blog.fightingLandlord.entity;

/**
 * 
 * @author Daniel
 * 
 * @since 2020年1月2日 下午6:13:55
 */

public class Category {

	private Integer cId;//分类id
	private String cName;//分类名字

	public Category(Integer cId, String cName) {
		super();
		this.cId = cId;
		this.cName = cName;
	}

	public Category() {
		super();
	}

	public Category(Integer cId) {
		super();
		this.cId = cId;
	}

	public Integer getcId() {
		return cId;
	}

	public void setcId(Integer cId) {
		this.cId = cId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

}
