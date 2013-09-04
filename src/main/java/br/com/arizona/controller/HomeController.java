package br.com.arizona.controller;

import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionSupport;

@Result(name=ActionSupport.SUCCESS, type="tiles", location="structure")
public class HomeController extends ActionSupport{

	private static final long serialVersionUID = -8581987768949747778L;

	public String execute() {
		return SUCCESS;
	}
}	
