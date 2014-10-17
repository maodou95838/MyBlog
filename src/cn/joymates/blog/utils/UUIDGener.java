package cn.joymates.blog.utils;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;

@Deprecated
public class UUIDGener {
	static long varl = 0L;

	public static final String getUUID() {
		return getUUID(0);
	}

	private static final String getUUID(int i) {
		if (i < 20) {
			i = 20;
		}
		String UUID = Long.toHexString(new Date().getTime()).toUpperCase();
		UUID = UUID + Long.toHexString(varl);

		varl += 1L;

		while (UUID.length() < i) {
			String random = String.valueOf(Math.random());
			try {
				UUID = UUID
						+ Long.toHexString(Long.parseLong(random.substring(2)))
								.toUpperCase();
			} catch (NumberFormatException localNumberFormatException) {
			}
		}
		UUID = UUID.substring(0, i);

		return UUID;
	}

	private static String getHostIp() {
		InetAddress myIPaddress = null;
		try {
			myIPaddress = InetAddress.getLocalHost();
		} catch (UnknownHostException localUnknownHostException) {
		}
		String ip = myIPaddress.getHostAddress();
		int i = ip.indexOf(".");
		ip = ip.substring(0, i) + ip.substring(i + 1, ip.length());
		i = ip.indexOf(".");
		ip = ip.substring(0, i) + ip.substring(i + 1, ip.length());
		i = ip.indexOf(".");
		ip = ip.substring(0, i) + ip.substring(i + 1, ip.length());
		return ip.trim();
	}
}