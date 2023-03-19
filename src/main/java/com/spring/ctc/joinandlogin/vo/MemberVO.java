package com.spring.ctc.joinandlogin.vo;

import java.util.Date;

public class MemberVO {
	
	private int member_num;
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_ph;
	private String member_rrn;
	private String member_email;
	private String member_email_yn;
	private String member_zipcode;
	private String member_road_address;
	private String member_jibun_address;
	private String member_namuji_address;
	private Date member_joindate;
	private int status;
	public int getMember_num() {
		return member_num;
	}
	
	public MemberVO(String member_name, String member_email) {
		this.member_name = member_name;
		this.member_email = member_email;
}
	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_ph() {
		return member_ph;
	}
	public void setMember_ph(String member_ph) {
		this.member_ph = member_ph;
	}
	public String getMember_rrn() {
		return member_rrn;
	}
	public void setMember_rrn(String member_rrn) {
		this.member_rrn = member_rrn;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_email_yn() {
		return member_email_yn;
	}
	public void setMember_email_yn(String member_email_yn) {
		this.member_email_yn = member_email_yn;
	}
	public String getMember_zipcode() {
		return member_zipcode;
	}
	public void setMember_zipcode(String member_zipcode) {
		this.member_zipcode = member_zipcode;
	}
	public String getMember_road_address() {
		return member_road_address;
	}
	public void setMember_road_address(String member_road_address) {
		this.member_road_address = member_road_address;
	}
	public String getMember_jibun_address() {
		return member_jibun_address;
	}
	public void setMember_jibun_address(String member_jibun_address) {
		this.member_jibun_address = member_jibun_address;
	}
	public String getMember_namuji_address() {
		return member_namuji_address;
	}
	public void setMember_namuji_address(String member_namuji_address) {
		this.member_namuji_address = member_namuji_address;
	}
	public Date getMember_joindate() {
		return member_joindate;
	}
	public void setMember_joindate(Date member_joindate) {
		this.member_joindate = member_joindate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Date getMember_unregister_date() {
		return member_unregister_date;
	}
	public void setMember_unregister_date(Date member_unregister_date) {
		this.member_unregister_date = member_unregister_date;
	}
	public Date getMemberr_deldate() {
		return memberr_deldate;
	}
	public void setMemberr_deldate(Date memberr_deldate) {
		this.memberr_deldate = memberr_deldate;
	}
	private Date member_unregister_date;
	private Date memberr_deldate;

}
