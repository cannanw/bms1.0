package cn.wbms.bms.common.util;

import java.io.IOException;
import java.security.MessageDigest;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

/**
 * 用于信息的加密
 * @author CANAAN
 *
 */
public class EncodeUtil {
	public static String encoder(String password) {
		try {
			MessageDigest md = MessageDigest.getInstance("md5");//MD5,SHA
			byte[] d = md.digest(password.getBytes("utf-8"));
			BASE64Encoder encoder = new BASE64Encoder();
			String s = encoder.encode(d);
			return s;
		} catch (Exception e) {
			throw new RuntimeException("加密失败");
		}
		
	}
}
