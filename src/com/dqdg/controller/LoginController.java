package com.dqdg.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.dqdg.common.AjaxRes;
import com.dqdg.common.Const;
import com.dqdg.service.LoginService;

@Controller
@RequestMapping("/login")
public class LoginController {

	@Autowired
	LoginService service;
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	@ResponseBody
	public AjaxRes login(HttpServletRequest request) {
		AjaxRes ar = new AjaxRes();
		String loginname = request.getParameter("loginname");
		String pwd = request.getParameter("pwd");
		
		Map<String, Object> map = new HashMap<>();
		map.put("loginname", loginname);
		map.put("pwd", pwd);
		try{
			ar.setSucceed(service.findUserByName(map),Const.DATA_SUCCEED);
		}catch (Exception e) {
			ar.setFailMsg(Const.DATA_FAIL);
		}
		return ar;
	}
	
	@RequestMapping(value="success",method = RequestMethod.GET) 
	public String success(Model model){
		
		return "main";
		
	}
}
