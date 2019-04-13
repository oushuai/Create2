package org.etspace.create.vo;

import java.sql.Timestamp;

/**
 * MediumId entity. @author MyEclipse Persistence Tools
 */

public class Medium implements java.io.Serializable {

	// Fields

	private String pname;
	private String leadername;
	private String leaderteacher;
	private String danwei;
	private String zizhu;
	private String bokuan;
	private String qizhi;
	private String tianbao;
	private String result;
	private String biandong;
	private String yuanyin;
	private String jingfei;
	private String siuation;
	private Timestamp mtime;
	private Timestamp mtime1;
	private String jindu;

	// Constructors

	/** default constructor */
	public Medium() {
	}

	/** full constructor */
	public Medium(String pname, String leadername, String leaderteacher, String danwei, String zizhu, String bokuan,
			String qizhi, String tianbao, String result, String biandong, String yuanyin, String jingfei,
			String siuation, Timestamp mtime, Timestamp mtime1,String jindu) {
		this.pname = pname;
		this.leadername = leadername;
		this.leaderteacher = leaderteacher;
		this.danwei = danwei;
		this.zizhu = zizhu;
		this.bokuan = bokuan;
		this.qizhi = qizhi;
		this.tianbao = tianbao;
		this.result = result;
		this.biandong = biandong;
		this.yuanyin = yuanyin;
		this.jingfei = jingfei;
		this.siuation = siuation;
		this.mtime = mtime;
		this.mtime1 = mtime1;
		this.jindu=jindu;
	}

	// Property accessors

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

	public String getLeaderteacher() {
		return this.leaderteacher;
	}

	public void setLeaderteacher(String leaderteacher) {
		this.leaderteacher = leaderteacher;
	}

	public String getDanwei() {
		return this.danwei;
	}

	public void setDanwei(String danwei) {
		this.danwei = danwei;
	}

	public String getZizhu() {
		return this.zizhu;
	}

	public void setZizhu(String zizhu) {
		this.zizhu = zizhu;
	}

	public String getBokuan() {
		return this.bokuan;
	}

	public void setBokuan(String bokuan) {
		this.bokuan = bokuan;
	}

	public String getQizhi() {
		return this.qizhi;
	}

	public void setQizhi(String qizhi) {
		this.qizhi = qizhi;
	}

	public String getTianbao() {
		return this.tianbao;
	}

	public void setTianbao(String tianbao) {
		this.tianbao = tianbao;
	}

	public String getResult() {
		return this.result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getBiandong() {
		return this.biandong;
	}

	public void setBiandong(String biandong) {
		this.biandong = biandong;
	}

	public String getYuanyin() {
		return this.yuanyin;
	}

	public void setYuanyin(String yuanyin) {
		this.yuanyin = yuanyin;
	}

	public String getJingfei() {
		return this.jingfei;
	}

	public void setJingfei(String jingfei) {
		this.jingfei = jingfei;
	}

	public String getSiuation() {
		return this.siuation;
	}

	public void setSiuation(String siuation) {
		this.siuation = siuation;
	}

	public Timestamp getMtime() {
		return this.mtime;
	}

	public void setMtime(Timestamp mtime) {
		this.mtime = mtime;
	}

	public Timestamp getMtime1() {
		return this.mtime1;
	}

	public void setMtime1(Timestamp mtime1) {
		this.mtime1 = mtime1;
	}
	public String getJindu() {
		return this.jindu;
	}

	public void setJindu(String jindu) {
		this.jindu = jindu;
	}
}