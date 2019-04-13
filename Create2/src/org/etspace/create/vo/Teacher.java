package org.etspace.create.vo;

/**
 * Teacher entity. @author MyEclipse Persistence Tools
 */

public class Teacher implements java.io.Serializable {

	// Fields

	private String name;
	private String yuanxi;
	private String sex;
	private String phone;
	private String rank;
	private String siuation;

	// Constructors

	/** default constructor */
	public Teacher() {
	}

	/** full constructor */
	public Teacher(String name, String yuanxi, String sex, String phone, String rank, String siuation) {
		this.name = name;
		this.yuanxi = yuanxi;
		this.sex = sex;
		this.phone = phone;
		this.rank = rank;
		this.siuation = siuation;
	}

	// Property accessors

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getYuanxi() {
		return this.yuanxi;
	}

	public void setYuanxi(String yuanxi) {
		this.yuanxi = yuanxi;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRank() {
		return this.rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getSiuation() {
		return this.siuation;
	}

	public void setSiuation(String siuation) {
		this.siuation = siuation;
	}

}