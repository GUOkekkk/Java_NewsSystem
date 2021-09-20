package com.test.filter;



import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebFilter(filterName = "SessionFilter")
public class SessionFilter implements Filter {
    public static final String login_page = "login.jsp";
    public static final String logout_page = "visitlogin.jsp";

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        String currentURL = request.getRequestURI();
        String ctxPath = request.getContextPath();
        String targetURL = currentURL.substring(ctxPath.length());
        HttpSession session = request.getSession(false);


        if (request.getSession().getAttribute("name") == null) {
            System.out.println("1" + targetURL + "ctxPath:" + ctxPath + "currentURL:" + currentURL);//?
            /* if (!("login.jsp".equals(targetURL))) {*/
            if ("/add.jsp".equals(targetURL)||"/edit.jsp".equals(targetURL)||"/news.jsp".equals(targetURL)) {
                request.getRequestDispatcher(logout_page).forward(request, response);
                return;
            } else {
                chain.doFilter(request, response);
                return ;
            }
        } else {
            chain.doFilter(request, response);
        }
    }

        /*if (!("login.jsp".equals(targetURL))) {
            System.out.println("1" + targetURL + "ctxPath:" + ctxPath + "currentURL:" + currentURL);//?
            if (("add.jsp".equals(targetURL)) || ("edit.jsp".equals(targetURL))) {
                if (request.getSession().getAttribute("sess") == null) {
                    request.getRequestDispatcher("visitlogin.jsp").forward(request, response);
                    return;
                } else {
                    chain.doFilter(request, response);
                    return;
                }
            }else {
                chain.doFilter(request, response);
                return;
            }
        }else {
            chain.doFilter(request, response);
        }
    }*/

    public void init(FilterConfig config) throws ServletException {

    }
}
