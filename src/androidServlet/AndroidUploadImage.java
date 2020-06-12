package androidServlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.google.gson.Gson;
import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.bizImp.UserBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.entity.Category;
import com.xmut.blog.fightingLandlord.entity.User;

/**
 * Servlet implementation class AndroidUploadImage
 */
@WebServlet("/AndroidUploadImage")
public class AndroidUploadImage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		// 获得磁盘文件条目工厂。
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 获取文件上传需要保存的路径，upload文件夹需存在。
		String path = request.getSession().getServletContext().getRealPath("/atguigu/img");
		System.out.println("path" + path);
		// 设置暂时存放文件的存储室，这个存储室可以和最终存储文件的文件夹不同。因为当文件很大的话会占用过多内存所以设置存储室。
		factory.setRepository(new File(path));
		// 设置缓存的大小，当上传文件的容量超过缓存时，就放到暂时存储室。
		factory.setSizeThreshold(1024 * 1024);
		// 上传处理工具类（高水平API上传处理？）
		ServletFileUpload upload = new ServletFileUpload(factory);

		String title = null;
		int category = 0;
		String content = null;
		String userName = null;// 用来给图片命名
		String realFileName = null;
		String photoAddress = null;
		String vedioAddress = null;
		String uid = null;
		String scheme = request.getScheme(); // 获取请求协议(http)
		String serverName = request.getServerName(); // 获取服务器名称(localhost)
		int serverPort = request.getServerPort(); // 获取服务器端口号
		String contextPath = request.getContextPath(); // 返回Web应用的URL入口
		try {
			// 调用 parseRequest（request）方法 获得上传文件 FileItem 的集合list 可实现多文件上传。
			List<FileItem> list = (List<FileItem>) upload.parseRequest(request);
			for (FileItem item : list) {
				// 获取表单属性名字。
				if (item.isFormField()) {
					String value = item.getString();
					value = new String(value.getBytes("ISO8859_1"), "utf-8");
					// 用户id
					if (item.getFieldName().equals("userid")) {
						System.out.println("userid" + value);
						uid = value;
					} else if (item.getFieldName().equals("content")) {
						System.out.println("content" + value);
						content = value;
					}
				} else {
					// 获取路径名
					String value = item.getName();// 获取文件名
					// System.out.println("文件名" + value);
					String fieldName = item.getFieldName();
					System.out.println("fieldName" + fieldName);
					System.out.println("value" + value);
					/**
					 * 文件名 当前时间（毫秒） + 图片类型的后缀
					 */
					path = request.getSession().getServletContext().getRealPath("/atguigu/img");// 存取路径

					photoAddress = value;
					// 收到写到接收的文件中。
					OutputStream out = new FileOutputStream(new File(path, value));// 将文件写入tomcat的编译路径下，以realFileName命名
					InputStream in = item.getInputStream();// 以流的形式读取上传的文件
					int length = 0;
					byte[] buf = new byte[1024];
					System.out.println("获取文件总量的容量:" + item.getSize());
					// 写入
					while ((length = in.read(buf)) != -1) {
						out.write(buf, 0, length);
					}
					in.close();
					out.close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 将文件存取的路径和其他信息存到数据库
		response.setContentType("text/html");
		// 存取在数据库
		Blog b = new Blog();
		b.setBlogContent(content);
		b.setBlogName("android");
		b.setCategory(new Category(1));
		b.setBlogPhoto(photoAddress);
		b.setBlogVideo(vedioAddress);
		UserBizImp user = new UserBizImp();
		User usertest = user.queryUserByIdSimple(Integer.parseInt(uid));
		b.setUser(usertest);
		b.setBlogThumbup(0);
		b.setBlogCommentNumber(0);
		String json = new String();

		if (new BlogBizImp().addBlog(b)) {
			json = new Gson().toJson(b);
		} else {
			json = null;
		}
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		out.close();
	}

}
