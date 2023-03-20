package com.spring.ctc.board.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("eventVO")
public class EventVO {

	private String com_id;
	private String flight_code;
	private String hotel_code;
	private String package_code;
	private String rent_code;
	private int event_num;
	private String event_title;
	private String event_content;
	private Date event_start_date;
	private Date event_end_date;
	private Date event_write_date;
	private int event_status;
	private int event_category;

	public EventVO() {
		
	}
	
	public EventVO(int event_num) {
		this.event_num = event_num;
		System.out.println("###########" + event_num);
	}
	
	public EventVO(int event_num, String event_title, String event_content, Date event_start_date, Date event_end_date, Date event_write_date) {
		this.event_num = event_num;
		this.event_title = event_title;
		this.event_content = event_content;
		this.event_start_date = event_start_date;
		this.event_end_date = event_end_date;
		this.event_write_date = event_write_date;
	}
	
	public String getCom_id() {
		return com_id;
	}
	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}
	public String getFlight_code() {
		return flight_code;
	}
	public void setFlight_code(String flight_code) {
		this.flight_code = flight_code;
	}
	public String getHotel_code() {
		return hotel_code;
	}
	public void setHotel_code(String hotel_code) {
		this.hotel_code = hotel_code;
	}
	public String getPackage_code() {
		return package_code;
	}
	public void setPackage_code(String package_code) {
		this.package_code = package_code;
	}
	public String getRent_code() {
		return rent_code;
	}
	public void setRent_code(String rent_code) {
		this.rent_code = rent_code;
	}
	public int getEvent_num() {
		return event_num;
	}
	public void setEvent_num(int event_num) {
		this.event_num = event_num;
	}
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	public String getEvent_content() {
		return event_content;
	}
	public void setEvent_content(String event_content) {
		this.event_content = event_content;
	}
	public Date getEvent_start_date() {
		return event_start_date;
	}
	public void setEvent_start_date(Date event_start_date) {
		this.event_start_date = event_start_date;
	}
	public Date getEvent_end_date() {
		return event_end_date;
	}
	public void setEvent_end_date(Date event_end_date) {
		this.event_end_date = event_end_date;
	}
	public Date getEvent_write_date() {
		return event_write_date;
	}
	public void setEvent_write_date(Date event_write_date) {
		this.event_write_date = event_write_date;
	}
	public int getEvent_status() {
		return event_status;
	}
	public void setEvent_status(int event_status) {
		this.event_status = event_status;
	}
	public int getEvent_category() {
		return event_category;
	}
	public void setEvent_category(int event_category) {
		this.event_category = event_category;
	}
	
}
