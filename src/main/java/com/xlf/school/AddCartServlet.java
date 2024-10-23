package com.xlf.school;

import com.xlf.school.bean.Goods;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * 添加购物车 Servlet
 * <p>
 * 用于处理添加购物车请求
 *
 * @author xiao_lfeng
 * @version v1.0.0
 * @since v1.0.0
 */
@WebServlet(name = "AddCartServlet", urlPatterns = "/AddCartServlet")
public class AddCartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "text/html; charset=UTF-8");

        String gid = request.getParameter("gid");
        String gcount = request.getParameter("gcount");

        if (gid != null && gcount != null) {
            Goods goods;
            GoodsDao goodsDao = new GoodsDao();

            goods = goodsDao.setGoods(Integer.parseInt(gid));
            goods.setGcount(Integer.parseInt(gcount));

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

            if (cart != null) {
                cart.addGoods(goods);
            } else {
                cart = new Cart();
                cart.addGoods(goods);
            }

            session.setAttribute("cart", cart);
            response.getWriter().println("添加成功！");
            response.getWriter().println("<a href='cart.jsp'>查看购物车</a>");
            response.getWriter().println("<a href='javascript:history.back(-1)'>返回上一页</a>");
        } else {
            response.getWriter().println("参数不正确");
            response.getWriter().println("<a href='javascript:history.back(-1)'>返回上一页</a>");
        }
    }
}
