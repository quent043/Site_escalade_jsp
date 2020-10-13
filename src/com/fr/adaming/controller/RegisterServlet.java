package com.fr.adaming.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fr.adaming.dao.UtilisateurDao;
import com.fr.adaming.entity.Utilisateur;



public class RegisterServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nom = null, prenom = null, email = null, password=null, dateNaissance =null;
		char admin = 'N';
		nom = req.getParameter("nom");
		prenom = req.getParameter("prenom");
		email = req.getParameter("email");
		password = req.getParameter("password");
		dateNaissance = req.getParameter("dateNaissance");
		
		Utilisateur user = new Utilisateur(nom, prenom, email, password, dateNaissance, admin);
		
		UtilisateurDao dao = new UtilisateurDao();
		
		dao.create(user);

		HttpSession session = req.getSession();

		session.setAttribute("id", user.getId());
		session.setAttribute("nom", user.getNom());
		session.setAttribute("prenom", user.getPrenom());
		session.setAttribute("email", user.getEmail());
		session.setAttribute("password", user.getPassword());
		session.setAttribute("dateNaissance", user.getDateNaissance());
		session.setAttribute("admin", user.getAdmin());
		
		
//		resp.sendRedirect("index.jsp"); //Redirection
		req.getRequestDispatcher("Login.jsp").forward(req, resp); //Forwarding
		
		
	}
}
