package org.etspace.create.vo;

/**
 * Studentinformation entity. @author MyEclipse Persistence Tools
 */

public class Studentinformation implements java.io.Serializable {

	// Fields

	private String num;
	private String name;
	private String phone;
	private String yuanxi;
	private String zhuanye;
	private String sex;
	private String nianfen;
	private String leadteacher;
	private String pname;
	private String sname;

	// Constructors

	/** default constructor */
	public Studentinformation() {
	}

	/** full constructor */
	public Studentinformation(String num, String name, String phone, String yuanxi,String zhuanye, String sex, String nianfen,
			String leadteacher,String pname, String sname) {
		this.num = num;
		this.name = name;
		this.phone = phone;
		this.yuanxi=yuanxi;
		this.zhuanye = zhuanye;
		this.sex = sex;
		this.nianfen = nianfen;
		this.leadteacher = leadteacher;
		this.pname = pname;
		this.sname =sname;
	}

	// Property accessors

	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getYuanxi() {
		return this.yuanxi;
	}

	public void setYuanxi(String yuanxi) {
		this.yuanxi = yuanxi;
	}
	public String getZhuanye() {
		return this.zhuanye;
	}

	public void setZhuanye(String zhuanye) {
		this.zhuanye = zhuanye;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getNianfen() {
		return this.nianfen;
	}

	public void setNianfen(String nianfen) {
		this.nianfen = nianfen;
	}
	public String getLeadteacher() {
		return this.leadteacher;
	}

	public void setLeadteacher(String leadteacher) {
		this.leadteacher = leadteacher;
	}
	public String getPname() {
		return this.pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getSname() {
		return this.sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
}