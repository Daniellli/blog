package com.xmut.blog.fightingLandlord.entity;
/**
 * Relationship table 
 * @author Daniel
 * @since 2019年12月31日 下午1:40:03
 */

public class Relationship {
	
	private Integer leftUserId;//第一个用户id
	private Integer rightUserId;//第二个用户id
	public Relationship() {
		super();
	}
	public Relationship(Integer leftUserId, Integer rightUserId) {
		super();
		this.leftUserId = leftUserId;
		this.rightUserId = rightUserId;
	}
	public Integer getLeftUserId() {
		return leftUserId;
	}
	public void setLeftUserId(Integer leftUserId) {
		this.leftUserId = leftUserId;
	}
	public Integer getRightUserId() {
		return rightUserId;
	}
	public void setRightUserId(Integer rightUserId) {
		this.rightUserId = rightUserId;
	}
	
	
	
	

}
