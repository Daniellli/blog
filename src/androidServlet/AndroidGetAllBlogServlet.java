package androidServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;

/**
 * Servlet implementation class AndroidGetAllBlogServlet
 */
@WebServlet("/AndroidGetAllBlogServlet")
public class AndroidGetAllBlogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		List<Blog> list = new BlogBizImp().getAllBlog();
		StringBuffer json = null;
		if (list != null) {
			json = new StringBuffer();
			json.append("{\r\n" + "    \"code\": 200,\r\n" + "    \"msg\": \"请求成功\",\r\n" + "    \"result\": ");
			json.append(new Gson().toJson(list));
			json.append("}");

		}

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();
	}

}
