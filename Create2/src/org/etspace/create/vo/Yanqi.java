package org.etspace.create.vo;

import java.sql.Timestamp;

/**
 * Yanqi entity. @author MyEclipse Persistence Tools
 */

public class Yanqi implements java.io.Serializable {

	// Fields

	private String pname;
	private String pnum;
	private String source;
	private String nianxian;
	private String leadername;
	private String leaderteacher;
	private String jinzhan;
	private String yuanyin;
	private String yijian;
	private String yijian2;
	private String yijian1;
	private String jindu;
	private Timestamp ytime;
	private Timestamp ytime1;

	// Constructors

	/** default constructor */
	public Yanqi() {
	}

	/** minimal constructor */
	public Yanqi(String pname, String source, String nianxian, String leadername, String jinzhan, String yuanyin,
			String yijian) {
		this.pname = pname;
		this.source = source;
		this.nianxian = nianxian;
		this.leadername = leadername;
		this.jinzhan = jinzhan;
		this.yuanyin = yuanyin;
		this.yijian = yijian;
	}

	/** full constructor */
	public Yanqi(String pname, String pnum, String source, String nianxian, String leadername, String leaderteacher,
			String jinzhan, String yuanyin, String yijian, String yijian2, String yijian1, String jindu,
			Timestamp ytime, Timestamp ytime1) {
		this.pname = pname;
		this.pnum = pnum;
		this.source = source;
		this.nianxian = nianxian;
		this.leadername = leadername;
		this.leaderteacher = leaderteacher;
		this.jinzhan = jinzhan;
		this.yuanyin = yuanyin;
		this.yijian = yijian;
		this.yijian2 = yijian2;
		this.yijian1 = yijian1;
		this.jindu = jindu;
		this.ytime = ytime;
		this.ytime1 = ytime1;
	}

	// Property accessors

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getPnum() {
		return this.pnum;
	}

	public void setPnum(String pnum) {
		this.pnum = pnum;
	}

	public String getSource() {
		return this.source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getNianxian() {
		return this.nianxian;
	}

	public void setNianxian(String nianxian) {
		this.nianxian = nianxian;
	}

	public String getLeadername() {
		return this.leadername;
	}

	public void setLeadername(String leadername) {
		this.leadername = leadername;
	}

	public String getLeaderteacher() {
		return this.leaderteacher;
	}

	public void setLeaderteacher(String leaderteacher) {
		this.leaderteacher = leaderteacher;
	}

	public String getJinzhan() {
		return this.jinzhan;
	}

	public void setJinzhan(String jinzhan) {
		this.jinzhan = jinzhan;
	}

	public String getYuanyin() {
		return this.yuanyin;
	}

	public void setYuanyin(String yuanyin) {
		this.yuanyin = yuanyin;
	}

	public String getYijian() {
		return this.yijian;
	}

	public void setYijian(String yijian) {
		this.yijian = yijian;
	}

	public String getYijian2() {
		return this.yijian2;
	}

	public void setYijian2(String yijian2) {
		this.yijian2 = yijian2;
	}

	public String getYijian1() {
		return this.yijian1;
	}

	public void setYijian1(String yijian1) {
		this.yijian1 = yijian1;
	}

	public String getJindu() {
		return this.jindu;
	}

	public void setJindu(String jindu) {
		this.jindu = jindu;
	}

	public Timestamp getYtime() {
		return this.ytime;
	}

	public void setYtime(Timestamp ytime) {
		this.ytime = ytime;
	}

	public Timestamp getYtime1() {
		return this.ytime1;
	}

	public void setYtime1(Timestamp ytime1) {
		this.ytime1 = ytime1;
	}

}