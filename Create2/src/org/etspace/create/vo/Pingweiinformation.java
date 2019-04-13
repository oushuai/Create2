package org.etspace.create.vo;

/**
 * Pingweiinformation entity. @author MyEclipse Persistence Tools
 */

public class Pingweiinformation implements java.io.Serializable {

	// Fields

	private String name;
	private String sex;
	private String phone;
	private String type;

	// Constructors

	/** default constructor */
	public Pingweiinformation() {
	}

	/** full constructor */
	public Pingweiinformation(String name, String sex, String phone, String type) {
		this.name = name;
		this.sex = sex;
		this.phone = phone;
		this.type = type;
	}

	// Property accessors

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}