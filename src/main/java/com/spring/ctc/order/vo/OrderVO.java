package com.spring.ctc.order.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("OrderVO")
public class OrderVO {
	private String member_id;
	private String flight_code;
	private String hotel_code;
	private String package_code;
	private String car_code;
	private int order_num;
	private String flight_name;
	private String hotel_name;
	private String package_name;
	private String car_name;
	private int order_goods_count;
	private Date order_date;
	private Date pay_order_time;
	private String pay_method;
	private String card_com_name;
	private String card_pay_month;
	private int order_status;
	private int pay_price;
	private int refund_price;
	private int pay_status;
	private int total_charge_price;
	private int total_pay_price;
	private int total_mileage;
	private String license_id;
	private Date license_date;
	private Date reser_start_date;
	private Date reser_end_date;
	private Date reser_period;
	private int reser_headcount;
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
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
	public String getCar_code() {
		return car_code;
	}
	public void setCar_code(String car_code) {
		this.car_code = car_code;
	}
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public String getFlight_name() {
		return flight_name;
	}
	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}
	public String getHotel_name() {
		return hotel_name;
	}
	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}
	public String getPackage_name() {
		return package_name;
	}
	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public int getOrder_goods_count() {
		return order_goods_count;
	}
	public void setOrder_goods_count(int order_goods_count) {
		this.order_goods_count = order_goods_count;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public Date getPay_order_time() {
		return pay_order_time;
	}
	public void setPay_order_time(Date pay_order_time) {
		this.pay_order_time = pay_order_time;
	}
	public String getPay_method() {
		return pay_method;
	}
	public void setPay_method(String pay_method) {
		this.pay_method = pay_method;
	}
	public String getCard_com_name() {
		return card_com_name;
	}
	public void setCard_com_name(String card_com_name) {
		this.card_com_name = card_com_name;
	}
	public String getCard_pay_month() {
		return card_pay_month;
	}
	public void setCard_pay_month(String card_pay_month) {
		this.card_pay_month = card_pay_month;
	}
	public int getOrder_status() {
		return order_status;
	}
	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}
	public int getPay_price() {
		return pay_price;
	}
	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}
	public int getRefund_price() {
		return refund_price;
	}
	public void setRefund_price(int refund_price) {
		this.refund_price = refund_price;
	}
	public int getPay_status() {
		return pay_status;
	}
	public void setPay_status(int pay_status) {
		this.pay_status = pay_status;
	}
	public int getTotal_charge_price() {
		return total_charge_price;
	}
	public void setTotal_charge_price(int total_charge_price) {
		this.total_charge_price = total_charge_price;
	}
	public int getTotal_pay_price() {
		return total_pay_price;
	}
	public void setTotal_pay_price(int total_pay_price) {
		this.total_pay_price = total_pay_price;
	}
	public int getTotal_mileage() {
		return total_mileage;
	}
	public void setTotal_mileage(int total_mileage) {
		this.total_mileage = total_mileage;
	}
	public String getLicense_id() {
		return license_id;
	}
	public void setLicense_id(String license_id) {
		this.license_id = license_id;
	}
	public Date getLicense_date() {
		return license_date;
	}
	public void setLicense_date(Date license_date) {
		this.license_date = license_date;
	}
	public Date getReser_start_date() {
		return reser_start_date;
	}
	public void setReser_start_date(Date reser_start_date) {
		this.reser_start_date = reser_start_date;
	}
	public Date getReser_end_date() {
		return reser_end_date;
	}
	public void setReser_end_date(Date reser_end_date) {
		this.reser_end_date = reser_end_date;
	}
	public Date getReser_period() {
		return reser_period;
	}
	public void setReser_period(Date reser_period) {
		this.reser_period = reser_period;
	}
	public int getReser_headcount() {
		return reser_headcount;
	}
	public void setReser_headcount(int reser_headcount) {
		this.reser_headcount = reser_headcount;
	}
	
	
	
}
