package com.irakozemaurice.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.irakozemaurice.dao.StudentDao;
import com.irakozemaurice.dao.UserDao;
import com.irakozemaurice.model.Student;
import com.irakozemaurice.model.User;
import com.irakozemaurice.util.EmailSender;

@WebServlet(name = "RegisterController", urlPatterns = "/register")
@MultipartConfig
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		/* Receive files uploaded to the Servlet from the form */
	    Part filePartPhoto = request.getPart("photo");
		String photo = uploadFile(filePartPhoto);
//		response.getWriter().print("file uploaded successfully");
		Part filePartDiploma = request.getPart("diploma");
		String diploma = uploadFile(filePartDiploma);
		
//		response.getWriter().print("file uploaded successfully");

		// create a user account
		User user = new User(Integer.parseInt(request.getParameter("student_id")),request.getParameter("password"));

		// create a student
		Student student = new Student(Integer.parseInt(request.getParameter("student_id")),
				request.getParameter("firstname"),request.getParameter("lastname"),
				request.getParameter("faculty"),request.getParameter("department"),
				request.getParameter("address"),request.getParameter("phone_number"),
				request.getParameter("email"),photo,diploma);
		student.setUser(user);

		// persist data
		UserDao userDao = new UserDao();
		userDao.save(user);

		StudentDao studentDao = new StudentDao();
		studentDao.save(student);
		
		// send confirmation email
		EmailSender.sendPlainTextEmail("iramaurimade@gmail.com", 
		        request.getParameter("email"), 
		        "Admission confirmation Email",
		        List.of("Congratulations!! Your registration has been completed successfull.Thank you."), 
		        true);
		

//		//	getServletContext().getRequestDispatcher("/dashboard.jsp").forward(request, response);
		response.sendRedirect("/home");

	}

	private String uploadFile(Part filePart) {

		String filename = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
		try {
			InputStream fileContent = filePart.getInputStream();
			String uploadPath = getServletContext().getRealPath("") + File.separator + "files";// files=UPLOAD_DIR_IN_WEBAPP_FOLDER
			File uploadDir = new File(uploadPath);
			if (!uploadDir.exists()) {
				uploadDir.mkdir();
			}
			String s = String.format("%d%s%s", new Date().getTime(),"_",filename);
			File file = new File(uploadPath + File.separator + s);
			OutputStream out = new FileOutputStream(file);
			byte[] buffer = new byte[1024];
			int length;
			while ((length = fileContent.read(buffer)) > 0) {
				out.write(buffer, 0, length);
			}
			out.close();
			fileContent.close();
			return s;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}
}
