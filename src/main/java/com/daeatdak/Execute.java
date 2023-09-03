package com.daeatdak;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.parser.Cookie;

public interface Execute {
	
	public Result execute(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServerException;
	
}