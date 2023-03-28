package com.spring.ctc.goods.pack.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component("GoodsPackVO")
public class GoodsPackVO {
   private String com_id;
   private int airport_num;
   private String package_code;
   private String package_name;
   private String package_exp;
   private String package_hotel_name;
   private int package_hotel_grade;
   private int package_price;
   private int package_saleprice;
   private int package_charge;
   private Date package_start_date;
   private Date package_end_date;
   private Date package_entered_date;
   private int package_status;
   private int package_mileage;
   
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
   public String getPackage_code() {
      return package_code;
   }
   public void setPackage_code(String package_code) {
      this.package_code = package_code;
   }
   public String getPackage_name() {
      return package_name;
   }
   public void setPackage_name(String package_name) {
      this.package_name = package_name;
   }
   public String getPackage_exp() {
      return package_exp;
   }
   public void setPackage_exp(String package_exp) {
      this.package_exp = package_exp;
   }
   public String getPackage_hotel_name() {
      return package_hotel_name;
   }
   public void setPackage_hotel_name(String package_hotel_name) {
      this.package_hotel_name = package_hotel_name;
   }
   public int getPackage_hotel_grade() {
      return package_hotel_grade;
   }
   public void setPackage_hotel_grade(int package_hotel_grade) {
      this.package_hotel_grade = package_hotel_grade;
   }
   public int getPackage_price() {
      return package_price;
   }
   public void setPackage_price(int package_price) {
      this.package_price = package_price;
   }
   public int getPackage_saleprice() {
      return package_saleprice;
   }
   public void setPackage_saleprice(int package_saleprice) {
      this.package_saleprice = package_saleprice;
   }
   public int getPackage_charge() {
      return package_charge;
   }
   public void setPackage_charge(int package_charge) {
      this.package_charge = package_charge;
   }
   public Date getPackage_start_date() {
      return package_start_date;
   }
   public void setPackage_start_date(Date package_start_date) {
      this.package_start_date = package_start_date;
   }
   public Date getPackage_end_date() {
      return package_end_date;
   }
   public void setPackage_end_date(Date package_end_date) {
      this.package_end_date = package_end_date;
   }
   public Date getPackage_entered_date() {
      return package_entered_date;
   }
   public void setPackage_entered_date(Date package_entered_date) {
      this.package_entered_date = package_entered_date;
   }
   public int getPackage_status() {
      return package_status;
   }
   public void setPackage_status(int package_status) {
      this.package_status = package_status;
   }
   public int getPackage_mileage() {
      return package_mileage;
   }
   public void setPackage_mileage(int package_mileage) {
      this.package_mileage = package_mileage;
   }
   
   

}