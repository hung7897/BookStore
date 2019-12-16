package com.bookstore.sgu_hung;

import com.bookstore.sgu_hung.interceptor.BookStoreInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.bookstore.sgu_hung.interceptor.AdminInterceptor;
import com.bookstore.sgu_hung.interceptor.AuthInterceptor;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer{
	@Autowired
	BookStoreInterceptor bookStoreInterceptor;
	
	@Autowired
	AuthInterceptor auth;
	
	@Autowired
	AdminInterceptor admin;
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
		registry.addInterceptor(auth).addPathPatterns("/bookstore/account/edit", "/bookstore/account/change", "/order/**");
		registry.addInterceptor(admin).addPathPatterns("/admin/**");
		registry.addInterceptor(bookStoreInterceptor).addPathPatterns("/**");
	}
}
