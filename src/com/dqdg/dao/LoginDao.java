package com.dqdg.dao;

import java.util.Map;

import com.dqdg.common.OptBatis;
@OptBatis(value = "")
public interface LoginDao {
	public String findUserByName(Map<String, Object>map);
}
