package com.dr.his.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * @ClassName: ThisPassWordSHA
 * @author Dylan_chen
 * @Description: TODO(密码加密 SHA) 
 * @date 2017年11月19日 下午4:12:19 
 * 
 */
public class ThisPassWordSHA {

	/**
	 * MD5 加密  SHA
	 */
	public  static final String SHA_KEY="SHA";


	public static void main(String[] args) throws NoSuchAlgorithmException {
		System.out.println(getFormatSHA("admin"));
	}
	
	/**
	 * ADMIN
	 * @Title: getSHA 
	 * @Description: TODO(明文密码加密  ) 
	 * @return String    返回类型 
	 * 
	 * @param password  未加密的密码
	 * @return  加密后的密码
	 * @throws NoSuchAlgorithmException 
	 */
	public  static String getSHA(String password) throws NoSuchAlgorithmException{
		
		byte[] bytes = password.getBytes();
		
		MessageDigest instance = MessageDigest.getInstance(SHA_KEY);
		instance.update(bytes);
		BigInteger bigInteger = new BigInteger(instance.digest());
		System.out.println("加密前:"+password);
		System.out.println("加密后:"+bigInteger);
		return bigInteger.toString(32);
	}
	
	/**
	 * @Title: getFormatSHA 
	 * @Description: TODO(密码再次加密) 
	 * @return String    返回类型 
	 * 
	 * @param passwrod  未加密的密码
	 * @return     再次加密后的密码
	 * @throws NoSuchAlgorithmException 
	 */
	public  static String getFormatSHA(String passwrod) throws NoSuchAlgorithmException{
		String sha = getSHA(passwrod);
		
		byte[] bytes = sha.getBytes();
		
		char[] c=new char[bytes.length];
	/*	for (int i = 0; i < ; i++) {

		}
			*/
		//经过倒序了遍历
		for(int i=sha.length(),j=0;i-->0;){
			c[j++]=sha.charAt(i);
		}
		System.out.println("^<"+String.valueOf(c)+">_");
		return "^<"+String.valueOf(c)+">_";
	}



}
