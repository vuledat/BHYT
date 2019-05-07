package com.calculate_tax.entities;

import java.util.Date;

public class Customer {
	private int id;
	private String name;
	private String address;
	private String cmnd;
	private String password;
	private String country;
	private String nation;
	private int sex;
	private String dob;
	private String xa;
	private String huyen;
	private String tinh;
	private String msbhxh;
	private String phone;
	private int muc_dong;
	private int phuong_thuc;
	private int nhom;
	private int sl;
	private String full_name;


	public Customer() {
	}

	public Customer(int id, String name, String address, String cmnd, String password, String country, String nation, int sex) {
		this.id = id;
		this.name = name;
		this.address = address;
		this.cmnd = cmnd;
		this.password = password;
		this.country = country;
		this.nation = nation;
		this.sex = sex;
	}

	public Customer(String name, String password) {
		this.name = name;
		this.password = password;
	}

	public Customer(int id, String name, String address) {
		this.id = id;
		this.name = name;
		this.address = address;
	}

	public Customer(String full_name, int id, String name, String address, String cmnd, String password, String country, String nation, int sex, String dob, String xa, String huyen, String tinh, String msbhxh, String phone, int muc_dong, int phuong_thuc, int nhom, int sl) {
		this.id = id;
		this.name = name;
		this.address = address;
		this.cmnd = cmnd;
		this.password = password;
		this.country = country;
		this.nation = nation;
		this.sex = sex;
		this.dob = dob;
		this.xa = xa;
		this.huyen = huyen;
		this.tinh = tinh;
		this.msbhxh = msbhxh;
		this.phone = phone;
		this.muc_dong = muc_dong;
		this.phuong_thuc = phuong_thuc;
		this.full_name = full_name;
		this.nhom = nhom;
		this.sl = sl;
	}

	@Override
	public String toString() {
		return "Customer{" +
				"id=" + id +
				", name='" + name + '\'' +
				", address='" + address + '\'' +
				", cmnd='" + cmnd + '\'' +
				", password='" + password + '\'' +
				", country='" + country + '\'' +
				", nation='" + nation + '\'' +
				", sex=" + sex +
				", dob='" + dob + '\'' +
				", xa='" + xa + '\'' +
				", huyen='" + huyen + '\'' +
				", tinh='" + tinh + '\'' +
				", msbhxh='" + msbhxh + '\'' +
				", phone='" + phone + '\'' +
				", muc_dong=" + muc_dong +
				", phuong_thuc=" + phuong_thuc +
				", nhom=" + nhom +
				", sl=" + sl +
				", full_name='" + full_name + '\'' +
				'}';
	}

	public String getCmnd() {
		return cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public int getId() {
		return id;
	}

	public int getNhom() {
		return nhom;
	}

	public void setNhom(int nhom) {
		this.nhom = nhom;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getXa() {
		return xa;
	}

	public void setXa(String xa) {
		this.xa = xa;
	}

	public String getHuyen() {
		return huyen;
	}

	public void setHuyen(String huyen) {
		this.huyen = huyen;
	}

	public String getTinh() {
		return tinh;
	}

	public void setTinh(String tinh) {
		this.tinh = tinh;
	}

	public String getMsbhxh() {
		return msbhxh;
	}

	public void setMsbhxh(String msbhxh) {
		this.msbhxh = msbhxh;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getMuc_dong() {
		return muc_dong;
	}

	public void setMuc_dong(int muc_dong) {
		this.muc_dong = muc_dong;
	}

	public int getPhuong_thuc() {
		return phuong_thuc;
	}

	public void setPhuong_thuc(int phuong_thuc) {
		this.phuong_thuc = phuong_thuc;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public int getSl() {
		return sl;
	}

	public void setSl(int sl) {
		this.sl = sl;
	}
}
