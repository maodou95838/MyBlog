package cn.joymates.blog.utils;

import java.lang.reflect.Method;
import java.sql.Connection;

import net.sf.cglib.proxy.Enhancer;
import net.sf.cglib.proxy.MethodInterceptor;
import net.sf.cglib.proxy.MethodProxy;

import org.apache.commons.lang3.StringUtils;

import cn.joymates.blog.db.DbUtils;

/**
 * Blog服务代理工厂
 * 
 * @author Jackie Hou
 *
 */
public class ServiceProxyFactory {
    public static <T> T getInstance(T target) {  
    	String packageName = target.getClass().getPackage().getName();
    	
    	if (StringUtils.isEmpty(packageName) || 
    			"service".equals(StringUtils.substringAfterLast(packageName, "."))) {
    		return null;
    	}
    	
        Enhancer enhancer = new Enhancer();  
        enhancer.setSuperclass(target.getClass());  
        
        enhancer.setCallback(new MethodInterceptor() {
			@Override
			public Object intercept(Object obj, Method method, Object[] args,
					MethodProxy mProxy) throws Throwable {
				Object retObj = null;
				Connection conn = null;
				try {
					conn = DbUtils.getConnection();
					conn.setAutoCommit(false);
					
					retObj = mProxy.invokeSuper(obj, args);
					conn.commit();
					
				} catch (Exception e) {
					e.printStackTrace();
					conn.rollback();
				} finally {
					DbUtils.closeConnection();
				}
				
				return retObj;
			}
        	
        });  
        return (T)enhancer.create();  
    }
    
	
}
