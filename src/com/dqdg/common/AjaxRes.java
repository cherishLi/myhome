package com.dqdg.common;

import java.io.Serializable;

import com.dqdg.common.Const;

public class AjaxRes implements Serializable  {

	private static final long serialVersionUID = 1L;
	/**
	 * 返回码值,默认值Const.FAI
	 */
	private int res=Const.FAIL;
	/**
	 * 返回码值解析
	 */
	private String resMsg;
	/**
	 * 返回对象
	 */
	private Object obj;
	
	public int getRes() {
		return res;
	}
	public void setRes(int res) {
		this.res = res;
	}
	public String getResMsg() {
		return resMsg;
	}
	public void setResMsg(String resMsg) {
		this.resMsg = resMsg;
	}
	public Object getObj() {
		return obj;
	}
	public void setObj(Object obj) {
		this.obj = obj;
	}
	/**
	 * 设置成功值
	 * @param obj  设置对象  
	 * @param resMsg  设置码值解析
	 */
	public void setSucceed(Object obj,String resMsg){
		this.setResMsg(resMsg);
		this.setSucceed(obj);
	}
	/**
	 * 设置成功值
	 * @param obj 设置对象    
	 */
	public void setSucceed(Object obj){
		this.obj = obj;
		this.setRes(Const.SUCCEED);
	}
	/**
	 * 设置成功值
	 * @param resMsg 返回码值解析
	 */
	public void setSucceedMsg(String resMsg){
		this.setRes(Const.SUCCEED);
		this.setResMsg(resMsg);
	}
	
	/**
	 * 设置成功值
	 * @param resMsg 返回码值解析
	 */
	public void setSucceedCode(int code,String resMsg){
		this.setRes(code);
		this.setResMsg(resMsg);
	}
	
	/**
	 * 设置失败值
	 * @param resMsg 返回码值解析
	 */
	public void setFailMsg(String resMsg){
		this.obj = null;
		this.setRes(Const.FAIL);
		this.setResMsg(resMsg);
	}
	
	/**
	 * 设置失败值
	 * @param resMsg 返回码值解析
	 */
	public void setFailCode(int code,String resMsg){
		this.obj = null;
		this.setRes(code);
		this.setResMsg(resMsg);
	}
	
	@Override
	public String toString() {
		return "AjaxRes [res=" + res + ", resMsg=" + resMsg + ", obj=" + obj + "]";
	}	
	
}
