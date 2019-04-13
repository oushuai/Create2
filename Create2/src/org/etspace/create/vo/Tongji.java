package org.etspace.create.vo;

import java.sql.Timestamp;

/**
 * Tongji entity. @author MyEclipse Persistence Tools
 */

public class Tongji implements java.io.Serializable {

	// Fields

	private String pname;
	private String leaderteacher;
	private String lixiang;
	private String jibie;
	private String lunwen;
	private String zhuanli;
	private String zuopin;
	private String jingsai;
	private String jingsai1;
	private String jindu;
	private Timestamp gtime;
	private Timestamp gtime1;

	// Constructors

	/** default constructor */
	public Tongji() {
	}

	/** minimal constructor */
	public Tongji(String pname, String leaderteacher, String lixiang, String jibie, String lunwen, String zhuanli,
			String zuopin, String jingsai, String jingsai1) {
		this.pname = pname;
		this.leaderteacher = leaderteacher;
		this.lixiang = lixiang;
		this.jibie = jibie;
		this.lunwen = lunwen;
		this.zhuanli = zhuanli;
		this.zuopin = zuopin;
		this.jingsai = jingsai;
		this.jingsai1 = jingsai1;
	}

	/** full constructor */
	public Tongji(String pname, String leaderteacher, String lixiang, String jibie, String lunwen, String zhuanli,
			String zuopin, String jingsai, String jingsai1, String jindu, Timestamp gtime, Timestamp gtime1) {
		this.pname = pname;
		this.leaderteacher = leaderteacher;
		this.lixiang = lixiang;
		this.jibie = jibie;
		this.lunwen = lunwen;
		this.zhuanli = zhuanli;
		this.zuopin = zuopin;
		this.jingsai = jingsai;
		this.jingsai1 = jingsai1;
		this.jindu = jindu;
		this.gtime = gtime;
		this.gtime1 = gtime1;
	}

	// Property accessors

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getLeaderteacher() {
		return this.leaderteacher;
	}

	public void setLeaderteacher(String leaderteacher) {
		this.leaderteacher = leaderteacher;
	}

	public String getLixiang() {
		return this.lixiang;
	}

	public void setLixiang(String lixiang) {
		this.lixiang = lixiang;
	}

	public String getJibie() {
		return this.jibie;
	}

	public void setJibie(String jibie) {
		this.jibie = jibie;
	}

	public String getLunwen() {
		return this.lunwen;
	}

	public void setLunwen(String lunwen) {
		this.lunwen = lunwen;
	}

	public String getZhuanli() {
		return this.zhuanli;
	}

	public void setZhuanli(String zhuanli) {
		this.zhuanli = zhuanli;
	}

	public String getZuopin() {
		return this.zuopin;
	}

	public void setZuopin(String zuopin) {
		this.zuopin = zuopin;
	}

	public String getJingsai() {
		return this.jingsai;
	}

	public void setJingsai(String jingsai) {
		this.jingsai = jingsai;
	}

	public String getJingsai1() {
		return this.jingsai1;
	}

	public void setJingsai1(String jingsai1) {
		this.jingsai1 = jingsai1;
	}

	public String getJindu() {
		return this.jindu;
	}

	public void setJindu(String jindu) {
		this.jindu = jindu;
	}

	public Timestamp getGtime() {
		return this.gtime;
	}

	public void setGtime(Timestamp gtime) {
		this.gtime = gtime;
	}

	public Timestamp getGtime1() {
		return this.gtime1;
	}

	public void setGtime1(Timestamp gtime1) {
		this.gtime1 = gtime1;
	}

}