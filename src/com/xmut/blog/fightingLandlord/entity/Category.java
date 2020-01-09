package com.xmut.blog.fightingLandlord.entity;

/**
 * 
 * @author Daniel
 * 
 * @since 2020年1月2日 下午6:13:55
 */

public class Category {

	private Integer cId;// 分类id
	private String cName;// 分类名字
	private Integer cNumber;// total

	public Category(Integer cId, String cName) {
		super();
		this.cId = cId;
		this.cName = cName;
	}

	public Category(Integer cId, String cName, Integer cNumber) {
		super();
		this.cId = cId;
		this.cName = cName;
		this.cNumber = cNumber;
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

	/**
	 * @return the cNumber
	 */
	public Integer getcNumber() {
		return cNumber;
	}

	/**
	 * @param cNumber
	 *            the cNumber to set
	 */
	public void setcNumber(Integer cNumber) {
		this.cNumber = cNumber;
	}

}
