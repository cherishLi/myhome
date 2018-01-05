package com.dqdg.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dqdg.dao.LoginDao;

@Service("LoginService")
public class LoginServiceImpl implements LoginService{

	@Autowired
	LoginDao dao;
	
	@Override
	public String findUserByName(Map<String, Object> map) {
		return dao.findUserByName(map);
	}

}
