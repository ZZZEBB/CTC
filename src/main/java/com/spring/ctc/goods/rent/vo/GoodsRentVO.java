package com.spring.ctc.goods.rent.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;
@Component("GoodsRentVO")
public class GoodsRentVO {
	private String com_id;
	private String rent_code;
	private String car_name;
	private String car_exp;
	private String car_model;
	private String car_location;
	private String car_latitude;
	private String car_logitude;
	private Date car_entered_date;
	private Date car_start_date;
	private String car_start_time;
	private Date car_end_date;
	private String car_end_time;
	private int car_price;
	private int car_saleprice;
	private int car_charge;
	private int car_mileage;
	private int car_status;
	private String car_image_filename;
	
	
	
	
	public String getCar_image_filename() {
		return car_image_filename;
	}
	public void setCar_image_filename(String car_image_filename) {
		this.car_image_filename = car_image_filename;
	}
	public int getCar_saleprice() {
		return car_saleprice;
	}
	public void setCar_saleprice(int car_saleprice) {
		this.car_saleprice = car_saleprice;
	}
	public String getCom_id() {
		return com_id;
	}
	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}
	public String getRent_code() {
		return rent_code;
	}
	public void setRent_code(String rent_code) {
		this.rent_code = rent_code;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public String getCar_exp() {
		return car_exp;
	}
	public void setCar_exp(String car_exp) {
		this.car_exp = car_exp;
	}
	public String getCar_model() {
		return car_model;
	}
	public void setCar_model(String car_model) {
		this.car_model = car_model;
	}
	public String getCar_location() {
		return car_location;
	}
	public void setCar_location(String car_location) {
		this.car_location = car_location;
	}
	public String getCar_latitude() {
		return car_latitude;
	}
	public void setCar_latitude(String car_latitude) {
		this.car_latitude = car_latitude;
	}
	public String getCar_logitude() {
		return car_logitude;
	}
	public void setCar_logitude(String car_logitude) {
		this.car_logitude = car_logitude;
	}
	public Date getCar_entered_date() {
		return car_entered_date;
	}
	public void setCar_entered_date(Date car_entered_date) {
		this.car_entered_date = car_entered_date;
	}
	public Date getCar_start_date() {
		return car_start_date;
	}
	public void setCar_start_date(Date car_start_date) {
		this.car_start_date = car_start_date;
	}
	public String getCar_start_time() {
		return car_start_time;
	}
	public void setCar_start_time(String car_start_time) {
		this.car_start_time = car_start_time;
	}
	public Date getCar_end_date() {
		return car_end_date;
	}
	public void setCar_end_date(Date car_end_date) {
		this.car_end_date = car_end_date;
	}
	public String getCar_end_time() {
		return car_end_time;
	}
	public void setCar_end_time(String car_end_time) {
		this.car_end_time = car_end_time;
	}
	public int getCar_price() {
		return car_price;
	}
	public void setCar_price(int car_price) {
		this.car_price = car_price;
	}
	public int getCar_charge() {
		return car_charge;
	}
	public void setCar_charge(int car_charge) {
		this.car_charge = car_charge;
	}
	public int getCar_mileage() {
		return car_mileage;
	}
	public void setCar_mileage(int car_mileage) {
		this.car_mileage = car_mileage;
	}
	public int getCar_status() {
		return car_status;
	}
	public void setCar_status(int car_status) {
		this.car_status = car_status;
	}
	
}
