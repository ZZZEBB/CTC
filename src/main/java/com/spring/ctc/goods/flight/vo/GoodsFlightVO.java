package com.spring.ctc.goods.flight.vo;

import java.util.Date;

public class GoodsFlightVO {
	   
	private String com_id;
	private int airport_num;
	private String flight_code;
	private String flight_name;
	private String flight_airline;
	private int flight_class;
	private int flight_saleprice;
	private String flight_departures;
	private Date flight_departure_date;
	private Date flight_departure_date_time;
	private String flight_arrivals;
	private Date flight_arrival_date;
	private int flight_status;
	private int flight_charge;
	private int flight_mileage;
	
	public GoodsFlightVO() {
		
	}
	public String getCom_id() {
		return com_id;
	}
	public void setCom_id(String com_id) {
		this.com_id = com_id;
	}
	public int getAirport_num() {
		return airport_num;
	}
	public void setAirport_num(int airport_num) {
		this.airport_num = airport_num;
	}
	public String getFlight_code() {
		return flight_code;
	}
	public void setFlight_code(String flight_code) {
		this.flight_code = flight_code;
	}
	public String getFlight_name() {
		return flight_name;
	}
	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}
	public String getFlight_airline() {
		return flight_airline;
	}
	public void setFlight_airline(String flight_airline) {
		this.flight_airline = flight_airline;
	}
	public int getFlight_class() {
		return flight_class;
	}
	public void setFlight_class(int flight_class) {
		this.flight_class = flight_class;
	}
	public int getFlight_saleprice() {
		return flight_saleprice;
	}
	public void setFlight_saleprice(int flight_saleprice) {
		this.flight_saleprice = flight_saleprice;
	}
	public String getFlight_departures() {
		return flight_departures;
	}
	public void setFlight_departures(String flight_departures) {
		this.flight_departures = flight_departures;
	}
	public Date getFlight_departure_date() {
		return flight_departure_date;
	}
	public void setFlight_departure_date(Date flight_departure_date) {
		this.flight_departure_date = flight_departure_date;
	}
	public Date getFlight_departure_date_time() {
		return flight_departure_date_time;
	}
	public void setFlight_departure_date_time(Date flight_departure_date_time) {
		this.flight_departure_date_time = flight_departure_date_time;
	}
	public String getFlight_arrivals() {
		return flight_arrivals;
	}
	public void setFlight_arrivals(String flight_arrivals) {
		this.flight_arrivals = flight_arrivals;
	}
	public Date getFlight_arrival_date() {
		return flight_arrival_date;
	}
	public void setFlight_arrival_date(Date flight_arrival_date) {
		this.flight_arrival_date = flight_arrival_date;
	}
	public int getFlight_status() {
		return flight_status;
	}
	public void setFlight_status(int flight_status) {
		this.flight_status = flight_status;
	}
	public int getFlight_charge() {
		return flight_charge;
	}
	public void setFlight_charge(int flight_charge) {
		this.flight_charge = flight_charge;
	}
	public int getFlight_mileage() {
		return flight_mileage;
	}
	public void setFlight_mileage(int flight_mileage) {
		this.flight_mileage = flight_mileage;
	}
}
