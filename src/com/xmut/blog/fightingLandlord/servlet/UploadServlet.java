package com.xmut.blog.fightingLandlord.servlet;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.xmut.blog.fightingLandlord.bizImp.BlogBizImp;
import com.xmut.blog.fightingLandlord.entity.Blog;
import com.xmut.blog.fightingLandlord.entity.Category;
import com.xmut.blog.fightingLandlord.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		// 获得磁盘文件条目工厂。
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 获取文件上传需要保存的路径，upload文件夹需存在。
		String path = request.getSession().getServletContext().getRealPath("/upload");
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

		String scheme = request.getScheme(); // 获取请求协议(http)
		String serverName = request.getServerName(); // 获取服务器名称(localhost)
		int serverPort = request.getServerPort(); // 获取服务器端口号
		String contextPath = request.getContextPath(); // 返回Web应用的URL入口

		try {
			// 调用 parseRequest（request）方法 获得上传文件 FileItem 的集合list 可实现多文件上传。
			List<FileItem> list = (List<FileItem>) upload.parseRequest(request);
			for (FileItem item : list) {
				// 获取表单属性名字。
				String name = item.getFieldName();
				// 如果获取的表单信息是普通的文本信息。即通过页面表单形式传递来的字符串。
				if (item.isFormField()) {
					// 获取用户具体输入的字符串，
					String value = item.getString();
					value = new String(value.getBytes("ISO8859_1"), "utf-8");
					String parameterName = item.getFieldName();
					if (item.getFieldName().equals("title")) // 标题字段
						title = value;

					if (item.getFieldName().equals("category")) // 标题字段
						category = Integer.parseInt(value);

					if (item.getFieldName().equals("content")) // 标题字段
						content = value;
					if (item.getFieldName().equals("userName")) // 标题字段
						userName = value;
				}
				// 如果传入的是非简单字符串，而是图片，音频，视频等二进制文件。
				else {
					// 获取路径名
					String value = item.getName();// 获取文件名
					System.out.println("文件名" + value);
					String fieldName = item.getFieldName();
					realFileName = userName + new Date().getTime()
							+ value.substring(value.lastIndexOf("."), value.length());// 对图片重新命名
					if (fieldName.equals("Photo")) {
						path = request.getSession().getServletContext().getRealPath("/upload/photo");// 存取路径
						// 访问路径
						photoAddress = scheme + "://" + serverName + ":" + serverPort + contextPath + "/upload/photo/"
								+ realFileName;// 应用程序的入口+图片的路径==访问图片的地址
					} else {
						path = request.getSession().getServletContext().getRealPath("/upload/video");// 存取路径
						vedioAddress = scheme + "://" + serverName + ":" + serverPort + contextPath + "/upload/video/"
								+ realFileName;// 应用程序的入口+图片的路径==访问图片的地址
					}
					System.out.println("path" + path);
					System.out.println("accessAddress" + photoAddress);
					System.out.println("accessAddress" + vedioAddress);
					
					
					


					

					// 取到最后一个反斜杠。

					// int start = value.lastIndexOf("\\");
					// 截取上传文件的 字符串名字。+1是去掉反斜杠。
					// String filename = value.substring(start + 1);

					// System.out.println("realFileName" + realFileName);

					// request.setAttribute(name, realFileName);

					/*
					 * 第三方提供的方法直接写到文件中。 item.write(new File(path,filename));
					 */
					// 收到写到接收的文件中。

					OutputStream out = new FileOutputStream(new File(path, realFileName));// 将文件写入tomcat的编译路径下，以realFileName命名
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
		// test
		System.out.println(title);
		System.out.println(content);
		System.out.println(photoAddress);
		System.out.println(vedioAddress);

		// 将文件存取的路径和其他信息存到数据库
		response.setContentType("text/html");

		// 存取在数据库
		Blog b = new Blog();
		b.setBlogContent(content);
		b.setBlogName(title);
		b.setCategory(new Category(category));
		b.setBlogPhoto(photoAddress);
		b.setBlogVideo(vedioAddress);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("currentUser");
		b.setUser(user);
		b.setBlogThumbup(0);
		PrintWriter out = response.getWriter();
		if (new BlogBizImp().addBlog(b)) {
			out.print("<script>alert('post successfully')</script>");
			out.print("<script>window.location.href='http://localhost:8080/blog/content/postBlog.jsp'</script>");
		} else {
			out.print("<script>alert('fail to post')</script>");
			out.print("<script>window.history.go(-1)</script>");
		}

	}
}
