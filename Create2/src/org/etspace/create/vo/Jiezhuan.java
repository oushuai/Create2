package org.etspace.create.vo;

import java.sql.Timestamp;

/**
 * Jiezhuan entity. @author MyEclipse Persistence Tools
 */

public class Jiezhuan implements java.io.Serializable {

	// Fields

	private String pname;
	private String source;
	private String nianxian;
	private String leadername;
	private String leadername1;
	private String yuanyin;
	private String biandong;
	private String jinzhan;
	private String yijian;
	private String yijian1;
	private String yijian2;
	private String jindu;
	private Timestamp ztime;
	private Timestamp ztime1;

	// Constructors

	/** default constructor */
	public Jiezhuan() {
	}

	/** minimal constructor */
	public Jiezhuan(String pname, String source, String nianxian, String leadername, String leadername1, String yuanyin,
			String biandong, String jinzhan, String yijian, String yijian1) {
		this.pname = pname;
		this.source = source;
		this.nianxian = nianxian;
		this.leadername = leadername;
		this.leadername1 = leadername1;
		this.yuanyin = yuanyin;
		this.biandong = biandong;
		this.jinzhan = jinzhan;
		this.yijian = yijian;
		this.yijian1 = yijian1;
	}

	/** full constructor */
	public Jiezhuan(String pname, String source, String nianxian, String leadername, String leadername1, String yuanyin,
			String biandong, String jinzhan, String yijian, String yijian1, String yijian2, String jindu,
			Timestamp ztime, Timestamp ztime1) {
		this.pname = pname;
		this.source = source;
		this.nianxian = nianxian;
		this.leadername = leadername;
		this.leadername1 = leadername1;
		this.yuanyin = yuanyin;
		this.biandong = biandong;
		this.jinzhan = jinzhan;
		this.yijian = yijian;
		this.yijian1 = yijian1;
		this.yijian2 = yijian2;
		this.jindu = jindu;
		this.ztime = ztime;
		this.ztime1 = ztime1;
	}

	// Property accessors

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
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

	public String getLeadername1() {
		return this.leadername1;
	}

	public void setLeadername1(String leadername1) {
		this.leadername1 = leadername1;
	}

	public String getYuanyin() {
		return this.yuanyin;
	}

	public void setYuanyin(String yuanyin) {
		this.yuanyin = yuanyin;
	}

	public String getBiandong() {
		return this.biandong;
	}

	public void setBiandong(String biandong) {
		this.biandong = biandong;
	}

	public String getJinzhan() {
		return this.jinzhan;
	}

	public void setJinzhan(String jinzhan) {
		this.jinzhan = jinzhan;
	}

	public String getYijian() {
		return this.yijian;
	}

	public void setYijian(String yijian) {
		this.yijian = yijian;
	}

	public String getYijian1() {
		return this.yijian1;
	}

	public void setYijian1(String yijian1) {
		this.yijian1 = yijian1;
	}

	public String getYijian2() {
		return this.yijian2;
	}

	public void setYijian2(String yijian2) {
		this.yijian2 = yijian2;
	}

	public String getJindu() {
		return this.jindu;
	}

	public void setJindu(String jindu) {
		this.jindu = jindu;
	}

	public Timestamp getZtime() {
		return this.ztime;
	}

	public void setZtime(Timestamp ztime) {
		this.ztime = ztime;
	}

	public Timestamp getZtime1() {
		return this.ztime1;
	}

	public void setZtime1(Timestamp ztime1) {
		this.ztime1 = ztime1;
	}

}