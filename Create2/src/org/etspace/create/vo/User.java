package org.etspace.create.vo;

import java.sql.Timestamp;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String password;
	private String type;
	private String stuid;
	private Timestamp rtime;
	private String quanxian;
	private String yuanxi;
	private String quanxian1;
	private String quanxian2;
	private String quanxian3;
	private String quanxian4;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(Integer id, String username, String password, String type, Timestamp rtime) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.type = type;
		this.rtime = rtime;
	}

	/** full constructor */
	public User(Integer id, String username, String password, String type, String stuid, Timestamp rtime,
			String quanxian, String yuanxi, String quanxian1, String quanxian2, String quanxian3, String quanxian4) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.type = type;
		this.stuid = stuid;
		this.rtime = rtime;
		this.quanxian = quanxian;
		this.yuanxi = yuanxi;
		this.quanxian1 = quanxian1;
		this.quanxian2 = quanxian2;
		this.quanxian3 = quanxian3;
		this.quanxian4 = quanxian4;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStuid() {
		return this.stuid;
	}

	public void setStuid(String stuid) {
		this.stuid = stuid;
	}

	public Timestamp getRtime() {
		return this.rtime;
	}

	public void setRtime(Timestamp rtime) {
		this.rtime = rtime;
	}

	public String getQuanxian() {
		return this.quanxian;
	}

	public void setQuanxian(String quanxian) {
		this.quanxian = quanxian;
	}

	public String getYuanxi() {
		return this.yuanxi;
	}

	public void setYuanxi(String yuanxi) {
		this.yuanxi = yuanxi;
	}

	public String getQuanxian1() {
		return this.quanxian1;
	}

	public void setQuanxian1(String quanxian1) {
		this.quanxian1 = quanxian1;
	}

	public String getQuanxian2() {
		return this.quanxian2;
	}

	public void setQuanxian2(String quanxian2) {
		this.quanxian2 = quanxian2;
	}

	public String getQuanxian3() {
		return this.quanxian3;
	}

	public void setQuanxian3(String quanxian3) {
		this.quanxian3 = quanxian3;
	}

	public String getQuanxian4() {
		return this.quanxian4;
	}

	public void setQuanxian4(String quanxian4) {
		this.quanxian4 = quanxian4;
	}

}