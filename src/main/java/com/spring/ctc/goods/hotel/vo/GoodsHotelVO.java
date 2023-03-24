package com.spring.ctc.goods.hotel.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("GoodsHotelVO")
public class GoodsHotelVO {
	private String com_id;
	private String hotel_code;
	private String hotel_name;
	private String hotel_exp;
	private String hotel_location;
	private String room_type;
	private String hotel_latitude;
	private String hotel_longitude;
	private Date hotel_entered_date;
	private Date hotel_check_in;
	private Date hotel_check_out;
	private int hotel_price;
	private int room_saleprice;
	private int hotel_grade;
	private int hotel_status;
	private int hotel_charge;
	private int hotel_mileage;
	
	
	public String getCom_id() {
		return com_id;
	}
	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}
	public String getHotel_code() {
		return hotel_code;
	}
	public void setHotel_code(String hotel_code) {
		this.hotel_code = hotel_code;
	}
	public String getHotel_name() {
		return hotel_name;
	}
	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}
	public String getHotel_exp() {
		return hotel_exp;
	}
	public void setHotel_exp(String hotel_exp) {
		this.hotel_exp = hotel_exp;
	}
	public String getHotel_location() {
		return hotel_location;
	}
	public void setHotel_location(String hotel_location) {
		this.hotel_location = hotel_location;
	}
	public String getRoom_type() {
		return room_type;
	}
	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}
	public String getHotel_latitude() {
		return hotel_latitude;
	}
	public void setHotel_latitude(String hotel_latitude) {
		this.hotel_latitude = hotel_latitude;
	}
	public String getHotel_longitude() {
		return hotel_longitude;
	}
	public void setHotel_longitude(String hotel_longitude) {
		this.hotel_longitude = hotel_longitude;
	}
	public Date getHotel_entered_date() {
		return hotel_entered_date;
	}
	public void setHotel_entered_date(Date hotel_entered_date) {
		this.hotel_entered_date = hotel_entered_date;
	}
	public Date getHotel_check_in() {
		return hotel_check_in;
	}
	public void setHotel_check_in(Date hotel_check_in) {
		this.hotel_check_in = hotel_check_in;
	}
	public Date getHotel_check_out() {
		return hotel_check_out;
	}
	public void setHotel_check_out(Date hotel_check_out) {
		this.hotel_check_out = hotel_check_out;
	}
	public int getHotel_price() {
		return hotel_price;
	}
	public void setHotel_price(int hotel_price) {
		this.hotel_price = hotel_price;
	}
	public int getRoom_saleprice() {
		return room_saleprice;
	}
	public void setRoom_saleprice(int room_saleprice) {
		this.room_saleprice = room_saleprice;
	}
	public int getHotel_grade() {
		return hotel_grade;
	}
	public void setHotel_grade(int hotel_grade) {
		this.hotel_grade = hotel_grade;
	}
	public int getHotel_status() {
		return hotel_status;
	}
	public void setHotel_status(int hotel_status) {
		this.hotel_status = hotel_status;
	}
	public int getHotel_charge() {
		return hotel_charge;
	}
	public void setHotel_charge(int hotel_charge) {
		this.hotel_charge = hotel_charge;
	}
	public int getHotel_mileage() {
		return hotel_mileage;
	}
	public void setHotel_mileage(int hotel_mileage) {
		this.hotel_mileage = hotel_mileage;
	}
	
	
}
