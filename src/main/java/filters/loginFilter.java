package filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class loginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();
        if (url.endsWith(".css")||url.endsWith(".js")){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }

        Object isLogin =request.getSession().getAttribute("isLogin");
        if (isLogin != null){
            if (url.endsWith("/login")){
                response.sendRedirect("/");
                return;
            } else  {
                filterChain.doFilter(servletRequest, servletResponse);
                return;
            }
        }

        if (url.endsWith("/login")){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        } else  {
            response.sendRedirect("/login");
            return;
        }
    }

    @Override
    public void destroy() {

    }
}
