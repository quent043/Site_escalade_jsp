package com.fr.adaming.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fr.adaming.dao.UtilisateurDao;
import com.fr.adaming.entity.Utilisateur;

public class UpdateUserServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Long id = null;
		String nom =null, prenom=null, dateNaissance=null, email=null, password=null;
		char admin='N';
		
		String emailUpdate = request.getParameter("emailUpdate");
		Utilisateur user = new Utilisateur(nom, prenom, email, password, dateNaissance, admin);
		UtilisateurDao dao = new UtilisateurDao();
		
		user = dao.readByEmail(emailUpdate);
				
//		id= Long.parseLong((String) request.getParameter("id"));
		user.setNom((String) request.getParameter("nom"));
		user.setPassword((String) request.getParameter("password"));
		user.setPrenom((String) request.getParameter("prenom"));
		user.setEmail((String) request.getParameter("email"));
		user.setDateNaissance((String) request.getParameter("dateNaissance"));
		user.setAdmin(request.getParameter("admin").charAt(0));
		
		
		dao.update(user);
		
		response.sendRedirect("login");

	}

	
	
}
