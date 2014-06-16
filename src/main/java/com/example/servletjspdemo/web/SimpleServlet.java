package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.faces.context.ResponseWriterWrapper;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.example.servletjspdemo.domain.Person;

@WebServlet("/SimpleServlet")
public class SimpleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {

		SessionFactory factory = new Configuration().configure().buildSessionFactory();
        Session session = factory.openSession();
		if(request.getParameter("name")==null)return;
        Person p = new Person();
		p.setFirstName(request.getParameter("name"));
		p.setYob(Integer.parseInt(request.getParameter("yob")));
		session.beginTransaction();
		session.save(p);
		session.getTransaction().commit();
		response.getWriter().println("koniec");
	}

}