package com.calculate_tax.controller;

import com.calculate_tax.entities.Customer;
import com.calculate_tax.operation.Common;
import com.calculate_tax.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class CustomerController {

	Common common = new Common();
	@Autowired
	private CustomerService customerService;

	@GetMapping(value={"/", "/trang-chu"})
	public String listCustomer(Model model , HttpSession session) {
		if (!session.getAttribute("user").equals(null)) {
            System.out.println("home");
			return "home/home";
		}
		return "redirect:/login";
	}

	@GetMapping(value={"/calculate-fee/{id}"})
	public String calculateFee(@PathVariable int id, Model model , HttpSession session) {

		Customer customer = customerService.findById(1);
		model.addAttribute("customer", customer);
		return "jsp/calculate-fee";

//		if (session.getAttribute("user") != null) {
//			Customer customer = customerService.findById(id);
//			model.addAttribute("customer", customer);
//			return "jsp/calculate-fee";
//		}
//		return "redirect:/login";
	}

	@RequestMapping("/calculate-fee/")
	public String doCalculateFee(@ModelAttribute("Customer") Customer customer, Model model, HttpServletRequest request) {
		int phuong_thuc = customer.getPhuong_thuc();
		int luong_thang = customer.getMuc_dong();
		int nhom 		= customer.getNhom();
		int fee 		= 0;
		int sl = customer.getSl();

		fee = common.getFee( nhom, luong_thang, phuong_thuc, sl);

		model.addAttribute("fee", fee);
//		customerService.update(customer);

//		Customer customer_rs = customerService.findById(customer.getId());
//		model.addAttribute("customer", customer_rs);

		return "jsp/calculate-fee-detail";
	}

	@GetMapping(value={"/login"})
	public String login(Model model, HttpSession session) {
		if (session.getAttribute("user") != null) {
			return "redirect:/";
		}
		return "jsp/customer-login";
	}

	@PostMapping("/login")
	public String login(@ModelAttribute("customer") Customer customer, Model model, HttpSession session) {

		Customer rs = customerService.login(customer.getName(), customer.getPassword());
		if (!rs.getName().equals(null)) {
			session.setAttribute("user" , rs);
			return "redirect:/";
		}
        System.out.println("login fail");
        return "redirect:/";
	}

	@GetMapping(value={"/sign-up"})
	public String signupCustomer(Model model) {
		model.addAttribute("customer", new Customer());
		return "jsp/customer-sign-up";
	}

	@PostMapping("/signupCustomer")
	public String doSignupCustomer(@ModelAttribute("customer") Customer customer, Model model) {
		System.out.println(customer.toString());
		customerService.signup(customer);
		model.addAttribute("listCustomer", customerService.findAll());
		return "jsp/customer-list";
	}

	@GetMapping(value={"/customer-logout"})
	public String logoutCustomer(Model model, HttpSession session) {
		session.setAttribute("user" , null);
		return "redirect:/login";
	}

	@GetMapping("/customer-save")
	public String insertCustomer(Model model) {
		model.addAttribute("customer", new Customer());
		return "jsp/customer-save";
	}

	@RequestMapping("/customer-view/{id}")
	public String viewCustomer(@PathVariable int id, Model model) {
		Customer customer = customerService.findById(id);
		model.addAttribute("customer", customer);
		return "jsp/customer-view";
	}
	
	@RequestMapping("/customer-update/{id}")
	public String updateCustomer(@PathVariable int id, Model model) {
		Customer customer = customerService.findById(id);
		model.addAttribute("customer", customer);
		return "jsp/customer-update";
	}

	@RequestMapping("/saveCustomer")
	public String doSaveCustomer(@ModelAttribute("customer") Customer customer, Model model) {
		customerService.signup(customer);
		System.out.println("xxx");
		model.addAttribute("listCustomer", customerService.findAll());
		return "redirect:/login";
//		return "jsp/customer-list";
	}

	@RequestMapping("/updateCustomer")
	public String doUpdateCustomer(@ModelAttribute("Customer") Customer customer, Model model, HttpServletRequest request) {
		customerService.update(customer);
		return "redirect:/customer-view/" + customer.getId();
	}
	
	@RequestMapping("/customerDelete/{id}")
	public String doDeleteCustomer(@PathVariable int id, Model model) {
		customerService.delete(id);
		model.addAttribute("listCustomer", customerService.findAll());
		return "jsp/customer-list";
	}
}
