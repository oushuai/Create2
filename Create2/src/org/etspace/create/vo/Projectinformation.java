package org.etspace.create.vo;

import java.sql.Timestamp;

/**
 * Projectinformation entity. @author MyEclipse Persistence Tools
 */

public class Projectinformation implements java.io.Serializable {

	// Fields

	private String pnum;
	private String scode;
	private String sname;
	private String pname;
	private String leadername;
	private String leadernum;
	private String rs;
	private String others;
	private String leadteacher;
	private String rank;
	private String money;
	private String finish;
	private String kemu;
	private String yijixueke;
	private String jianjie;
	private String beizhu;
	private Timestamp ptime;
	private String jindu;

	// Constructors

	/** default constructor */
	public Projectinformation() {
	}

	/** minimal constructor */
	public Projectinformation(String pnum, String scode, String sname, String pname, String leadername,
			String leadernum, String rs, String others, String leadteacher, String rank, String money, String finish,
			String kemu, String yijixueke, String jianjie, Timestamp ptime) {
		this.pnum = pnum;
		this.scode = scode;
		this.sname = sname;
		this.pname = pname;
		this.leadername = leadername;
		this.leadernum = leadernum;
		this.rs = rs;
		this.others = others;
		this.leadteacher = leadteacher;
		this.rank = rank;
		this.money = money;
		this.finish = finish;
		this.kemu = kemu;
		this.yijixueke = yijixueke;
		this.jianjie = jianjie;
		this.ptime = ptime;
	}

	/** full constructor */
	public Projectinformation(String pnum, String scode, String sname, String pname, String leadername,
			String leadernum, String rs, String others, String leadteacher, String rank, String money, String finish,
			String kemu, String yijixueke, String jianjie, String beizhu, Timestamp ptime, String jindu) {
		this.pnum = pnum;
		this.scode = scode;
		this.sname = sname;
		this.pname = pname;
		this.leadername = leadername;
		this.leadernum = leadernum;
		this.rs = rs;
		this.others = others;
		this.leadteacher = leadteacher;
		this.rank = rank;
		this.money = money;
		this.finish = finish;
		this.kemu = kemu;
		this.yijixueke = yijixueke;
		this.jianjie = jianjie;
		this.beizhu = beizhu;
		this.ptime = ptime;
		this.jindu = jindu;
	}

	// Property accessors

	public String getPnum() {
		return this.pnum;
	}

	public void setPnum(String pnum) {
		this.pnum = pnum;
	}

	public String getScode() {
		return this.scode;
	}

	public void setScode(String scode) {
		this.scode = scode;
	}

	public String getSname() {
		return this.sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getLeadername() {
		return this.leadername;
	}

	public void setLeadername(String leadername) {
		this.leadername = leadername;
	}

	public String getLeadernum() {
		return this.leadernum;
	}

	public void setLeadernum(String leadernum) {
		this.leadernum = leadernum;
	}

	public String getRs() {
		return this.rs;
	}

	public void setRs(String rs) {
		this.rs = rs;
	}

	public String getOthers() {
		return this.others;
	}

	public void setOthers(String others) {
		this.others = others;
	}

	public String getLeadteacher() {
		return this.leadteacher;
	}

	public void setLeadteacher(String leadteacher) {
		this.leadteacher = leadteacher;
	}

	public String getRank() {
		return this.rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getMoney() {
		return this.money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getFinish() {
		return this.finish;
	}

	public void setFinish(String finish) {
		this.finish = finish;
	}

	public String getKemu() {
		return this.kemu;
	}

	public void setKemu(String kemu) {
		this.kemu = kemu;
	}

	public String getYijixueke() {
		return this.yijixueke;
	}

	public void setYijixueke(String yijixueke) {
		this.yijixueke = yijixueke;
	}

	public String getJianjie() {
		return this.jianjie;
	}

	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}

	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	public Timestamp getPtime() {
		return this.ptime;
	}

	public void setPtime(Timestamp ptime) {
		this.ptime = ptime;
	}

	public String getJindu() {
		return this.jindu;
	}

	public void setJindu(String jindu) {
		this.jindu = jindu;
	}

}