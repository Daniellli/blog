package androidServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.xmut.blog.fightingLandlord.bizImp.UserBizImp;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class GetAccountServlet
 */
@WebServlet("/GetAccountServlet")
public class GetAccountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		UserBizImp userBiz = new UserBizImp();

		String userName = request.getParameter("userName");
		String pwd = request.getParameter("pwd");

		// List<Blog> blogs = blog.findBlogByCategoryId(cid);
		User user = userBiz.checkLogin(userName, pwd);

		String json = null;
		if (user != null) {
			Gson gson = new Gson();
			json = gson.toJson(user);
		}

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();
	}

}
