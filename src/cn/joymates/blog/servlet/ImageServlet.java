package cn.joymates.blog.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;

import cn.joymates.blog.utils.RandomValidateCode;

/**
 * Validate code servlet
 * 
 * @author Jackie Hou
 *
 */
public class ImageServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	RandomValidateCode rvc = new RandomValidateCode();
    	HttpSession session = request.getSession();
    	final String V_CODE = "validateCode";
    	
    	String code = (session.getAttribute(V_CODE) == null ? "" : session.getAttribute(V_CODE).toString());
    	if (StringUtils.isEmpty(code)) {
    		code = rvc.generateVCode();
    		session.setAttribute(V_CODE, code);
    		request.getRequestDispatcher("/main/login2.jsp").forward(request, response);
    		
    	} else {
    		response.setContentType("image/jpeg");//输出的内容为图片
    		response.setHeader("Pragma", "No-cache");//不要缓存此内容
    		response.setHeader("Cache-Control", "no-cache");
    		response.setDateHeader("Expire", 0);
    		
    		try {
                rvc.getRandcode(code, response);//输出图片方法
                session.removeAttribute(V_CODE);
            } catch (Exception e) {
                e.printStackTrace();
            }
    	}
        
        
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}