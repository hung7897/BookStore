package com.bookstore.sgu_hung.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bookstore.sgu_hung.service.HttpService;

@Controller
@RequestMapping(value = {"admin/home","admin"})
public class AdminHomeController {
	@Autowired
	HttpService http;
	
	@RequestMapping("index")
	public String index() {
		return http.adminLayout("home/index");
	}
}
