package com.calculate_tax.dao;

import com.calculate_tax.entities.Customer;
import com.calculate_tax.entities.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CustomerDAO {

	@Autowired
	public JdbcTemplate jdbcTemplate;

	public CustomerDAO(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public void save(Customer customer) {
		String sql = "INSERT INTO customer (cmnd,name, sex, dob, country, nation, address, password) VALUES  ('" + customer.getCmnd()+ "','" + customer.getName() + "','" + customer.getSex() + "','" + customer.getDob() + "','" + customer.getCountry() + "','" + customer.getNation() + "','" + customer.getAddress() + "','" + customer.getPassword() +"')";
		jdbcTemplate.update(sql);
	}

	public void signup(Customer customer) {
		String sql = "INSERT INTO customer (name, password) VALUES  ( '"+ customer.getName() +"', '"+ customer.getPassword()+"')";
		jdbcTemplate.update(sql);
	}
	public Customer login(String name, String password) {

//		String sql2 = "SELECT customer.id FROM customer WHERE name = ? and password = ?";
//
//		int id = jdbcTemplate.;

		String sql = "SELECT * FROM customer WHERE name = ? and password = ?";
		Customer customer = new Customer();
		try{
			customer = jdbcTemplate.queryForObject(sql, new CustomerMapper(), name, password);
//			return customer;
		}
		catch (Exception e){
			return null;
		}
		System.out.println("loginDao");

//		if (!customer.getName().equals(null)) {
//			return customer;
//		}
//		customer.setName("");
		return customer;
	}

	public void delete(int id) {
		String sql = "DELETE FROM customer WHERE id = " + id;
		jdbcTemplate.update(sql);
	}
	
	public void update(Customer customer) {
		String sql = "UPDATE customer SET full_name = ?, cmnd = ?, sex = ?, dob = ?, country = ?, nation = ?, xa = ?, huyen = ?, tinh = ?, msbhxh =?, phone =?, muc_dong = ?, phuong_thuc = ?, nhom = ?, sl = ? WHERE id = ? ";
		jdbcTemplate.update(sql, customer.getFull_name(), customer.getCmnd(), customer.getSex(), customer.getDob(), customer.getCountry(), customer.getNation(), customer.getXa(), customer.getHuyen(), customer.getTinh(), customer.getMsbhxh(), customer.getPhone(), customer.getMuc_dong(), customer.getPhuong_thuc(), customer.getNhom(), customer.getSl(), customer.getId() );
	}

	public Customer findById(int id) {
		String sql = "SELECT * FROM customer WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new CustomerMapper(), id);
	}

	public List<Customer> findAll() {
		String sql = "SELECT * FROM customer";
		return jdbcTemplate.query(sql, new CustomerMapper());
	}

}
