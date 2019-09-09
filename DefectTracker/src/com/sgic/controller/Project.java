package com.sgic.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sgic.config.DBConfig;

public class Project extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String projectName = req.getParameter("projectName");
		String projectDescription= req.getParameter("projectDescription");
		
		if(projectName.length()==0 || projectDescription.length()==0) {
			resp.sendRedirect("project.jsp?msg=invalid");
		}else {
			Connection conn=DBConfig.getDBConnection();
			
			try {
				Statement stmt=conn.createStatement();
				int result=stmt.executeUpdate("INSERT INTO projects('project_name','project_description')VALUES('"+proectName+"','"+projectDescription+"')");
				System.out.println(result+"records affected");
				response.sendRedirect("project.jsp?msg=success");
				conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
				response.sendRedirect("project.jsp?msg=error");
			}
		}
	}

}
