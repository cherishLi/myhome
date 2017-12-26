package com.dqdg.common;

import java.io.Serializable;

import com.dqdg.common.Const;

public class AjaxRes implements Serializable  {

	private static final long serialVersionUID = 1L;
	/**
	 * ������ֵ,Ĭ��ֵConst.FAI
	 */
	private int res=Const.FAIL;
	/**
	 * ������ֵ����
	 */
	private String resMsg;
	/**
	 * ���ض���
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
	 * ���óɹ�ֵ
	 * @param obj  ���ö���  
	 * @param resMsg  ������ֵ����
	 */
	public void setSucceed(Object obj,String resMsg){
		this.setResMsg(resMsg);
		this.setSucceed(obj);
	}
	/**
	 * ���óɹ�ֵ
	 * @param obj ���ö���    
	 */
	public void setSucceed(Object obj){
		this.obj = obj;
		this.setRes(Const.SUCCEED);
	}
	/**
	 * ���óɹ�ֵ
	 * @param resMsg ������ֵ����
	 */
	public void setSucceedMsg(String resMsg){
		this.setRes(Const.SUCCEED);
		this.setResMsg(resMsg);
	}
	
	/**
	 * ���óɹ�ֵ
	 * @param resMsg ������ֵ����
	 */
	public void setSucceedCode(int code,String resMsg){
		this.setRes(code);
		this.setResMsg(resMsg);
	}
	
	/**
	 * ����ʧ��ֵ
	 * @param resMsg ������ֵ����
	 */
	public void setFailMsg(String resMsg){
		this.obj = null;
		this.setRes(Const.FAIL);
		this.setResMsg(resMsg);
	}
	
	/**
	 * ����ʧ��ֵ
	 * @param resMsg ������ֵ����
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
