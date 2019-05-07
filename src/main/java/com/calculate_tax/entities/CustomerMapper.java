package com.calculate_tax.entities;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class CustomerMapper implements RowMapper<Customer> {

	public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
		Customer customer = new Customer();
		customer.setId(rs.getInt("id"));
		customer.setName(rs.getString("name"));
		customer.setAddress(rs.getString("address"));
		customer.setCmnd(rs.getString("cmnd"));
		customer.setCountry(rs.getString("country"));
		customer.setNation(rs.getString("nation"));
		customer.setDob(rs.getString("dob"));
		customer.setSex(rs.getInt("sex"));
		customer.setPassword(rs.getString("password"));
		customer.setXa(rs.getString("xa"));
		customer.setHuyen(rs.getString("huyen"));
		customer.setTinh(rs.getString("tinh"));
		customer.setMsbhxh(rs.getString("msbhxh"));
		customer.setPhone(rs.getString("phone"));
		customer.setMuc_dong(rs.getInt("muc_dong"));
		customer.setPhuong_thuc(rs.getInt("phuong_thuc"));
		customer.setFull_name(rs.getString("full_name"));
		customer.setNhom(rs.getInt("nhom"));
		customer.setSl(rs.getInt("sl"));

		return customer;
	}
}
