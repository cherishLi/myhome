package com.dqdg.util;

import java.util.UUID;

public class UuidUtil {

	/**
	 * ��װJDK�Դ���UUID, ͨ��Random��������, �м���-�ָ�.
	 */
	public static String get32UUID() {
		String uuid = UUID.randomUUID().toString().trim().replaceAll("-", "");
		return uuid;
	}
	
	/**
	 * ��װJDK�Դ���UUID, ͨ��Random��������, �м���-�ָ�.
	 */
	public static String uuid() {
		return UUID.randomUUID().toString();
	}
	
	public static void main(String[] args) {
		System.out.println(get32UUID());
	}
}

