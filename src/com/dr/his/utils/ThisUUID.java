package com.dr.his.utils;

import java.util.UUID;

/**
 * @ClassName: ThisUUID
 * @author Dylan_chen
 * @Description: TODO(使用UUID来做为唯一表示符 主键) 
 * @date 2017年11月19日 下午4:03:56 
 * 
 */
public class ThisUUID {
	
	 /**
	 * @Title: getUUID 
	 * @Description: TODO(获取原生的UUID) 
	 * @return String    返回类型 
	 * 
	 * @return  UUID类型的字符串 
	 */
	public  static String getUUID()throws Exception{
		 return UUID.randomUUID().toString();
	 }
	
	//
	
	/**
	 * @Title: getSplitUUID 
	 * @Description: TODO(格式化UUID 不要'-') 
	 * @return String    返回类型 
	 * 
	 * @return 返回格式化之后的UUID
	 */
	public  static String getSplitUUID()throws Exception{
		String uuid = getUUID();
		char ch = 0;
		char[] c = new char[32];
		for (int i = uuid.length(), j = 0; i-- > 0;) {
			if ((ch = uuid.charAt(i)) != '-') {
				c[j++] = ch;
			}

		}
		return String.valueOf(c);
	}
	
	
}
