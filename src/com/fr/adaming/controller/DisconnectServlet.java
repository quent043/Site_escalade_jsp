package com.fr.adaming.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fr.adaming.entity.Utilisateur;

import com.fr.adaming.dao.UtilisateurDao;


public class DisconnectServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		session.removeAttribute("id");
		session.removeAttribute("nom");
		session.removeAttribute("prenom");
		session.removeAttribute("email");
		session.removeAttribute("password");
		session.removeAttribute("dateNaissance");
		
		UtilisateurDao dao = new UtilisateurDao();
		dao.closeSession();
		
//		session.invalidate();
		
		
		resp.sendRedirect("Login.jsp");
	}

}
