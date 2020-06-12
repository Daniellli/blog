package androidServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.xmut.blog.fightingLandlord.biz.UserBiz;
import com.xmut.blog.fightingLandlord.bizImp.UserBizImp;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class AndroidRegisterServlet
 */
@WebServlet("/AndroidRegisterServlet")
public class AndroidRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		JsonParser parse = new JsonParser();
		JsonObject object = (JsonObject) parse.parse(request.getParameter("user"));
		User user = new User();
		user.setUserName(object.get("userName").getAsString());
		user.setUserPwd(object.get("userPwd").getAsString());
		user.setUserAge(11);
		user.setUserSex(0);
		user.setUserQuestion(object.get("userQuestion").getAsString());
		user.setUserAnswer(object.get("userAnswer").getAsString());
		user.setUserType(0);
		UserBiz userBiz = new UserBizImp();
		String json = null;
		if (userBiz.register(user)) {
			// 注册成功
			Gson gson = new Gson();
			json = gson.toJson(user);
		} else {
			json = null;// 注册失败返回null
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();

	}

}