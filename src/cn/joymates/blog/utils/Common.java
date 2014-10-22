package cn.joymates.blog.utils;
import java.lang.reflect.Method;

@Deprecated
public class Common {
	/**
	 * 判断是否存在此方法
	 * 
	 * @param clas
	 * @param methodname
	 * @return
	 */
	public static boolean isMethodDefined(Class<?> clas, String methodname, Class<?> ... parameterTypes) {
		try {
			Method m = clas.getMethod(methodname, parameterTypes);
			if (m != null) {
				return true;
			} else {
				return false;
			}
		} catch (SecurityException e) {
			e.printStackTrace();
			return false;
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
			return false;
		}
	}
}
