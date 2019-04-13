package org.etspace.create.vo;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class OnlineNumberListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent sessionEvent) {
        System.out.println("创建session，人数加1");
        // 获取servletcontext
        ServletContext context = sessionEvent.getSession().getServletContext();
        // 获取当前人数
        Integer count = (Integer) context.getAttribute("OnlineCount");
        if (count == null) {
            // 若果为空，初始化为1（第一个访问的用户）
            count = new Integer(1);
        } else {
            // +1
            int i = count.intValue();
            count = new Integer(i + 1);
        }
        // 改变人数
        context.setAttribute("OnlineCount", count);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent sessionEvent) {
        System.out.println("销毁session，人数减1");
        ServletContext context = sessionEvent.getSession().getServletContext();
        Integer count = (Integer) context.getAttribute("OnlineCount");
        int i = count.intValue();
        count = new Integer(i - 1);
        context.setAttribute("OnlineCount", count);
    }

}