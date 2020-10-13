package com.fr.adaming.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fr.adaming.dao.ProduitDao;
import com.fr.adaming.dao.UtilisateurDao;
import com.fr.adaming.entity.Produit;
import com.fr.adaming.entity.Utilisateur;

public class LoginServlet2 extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("pwd");

		HttpSession session = req.getSession();

		UtilisateurDao dao = new UtilisateurDao();
		Utilisateur user = dao.readByEmailAndPassword(email, password);
		
		user.setAdmin('Y');
		
		if (session.getAttribute("nom") == null) { // si pas connecté

			if (user != null) { // si l'utilisateur existe
				session.setAttribute("id", user.getId());
				session.setAttribute("nom", user.getNom());
				session.setAttribute("prenom", user.getPrenom());
				session.setAttribute("email", user.getEmail());
				session.setAttribute("password", user.getPassword());
				session.setAttribute("dateNaissance", user.getDateNaissance());
				session.setAttribute("admin", user.getAdmin());
				
				List<Produit> liste = new ArrayList<>();

				ProduitDao daop = new ProduitDao();
				liste = daop.readAll();

				req.setAttribute("liste", liste);
				req.setAttribute("sizeListe", liste.size());
				
				if (session.getAttribute("admin") == "Y") { //si il est admin

					req.getRequestDispatcher("fail.html").forward(req, resp);

				} else 
				{
					req.getRequestDispatcher("MonCompte.jsp").forward(req, resp);
				}
				

			} else {
				resp.sendRedirect("fail.html");
			}
		} else // si utilisateur déja connecté

		if (session.getAttribute("admin") == "Y") { //si il est admin

			List<Produit> liste = new ArrayList<>();

			ProduitDao daop = new ProduitDao();
			liste = daop.readAll();

			req.setAttribute("liste", liste);
			req.setAttribute("sizeListe", liste.size());

			req.getRequestDispatcher("fail.html").forward(req, resp);

		} else 
		{
			
			List<Produit> liste = new ArrayList<>();

			ProduitDao daop = new ProduitDao();
			liste = daop.readAll();

			req.setAttribute("liste", liste);
			req.setAttribute("sizeListe", liste.size());

			req.getRequestDispatcher("MonCompte.jsp").forward(req, resp);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email = req.getParameter("email");
		String password = req.getParameter("pwd");

		HttpSession session = req.getSession();

		UtilisateurDao dao = new UtilisateurDao();
		Utilisateur user = dao.readByEmailAndPassword(email, password);
		
		
		
		if (session.getAttribute("nom") == null) { // si pas connecté

			if (user != null) { // si l'utilisateur existe
				session.setAttribute("id", user.getId());
				session.setAttribute("nom", user.getNom());
				session.setAttribute("prenom", user.getPrenom());
				session.setAttribute("email", user.getEmail());
				session.setAttribute("password", user.getPassword());
				session.setAttribute("dateNaissance", user.getDateNaissance());
				session.setAttribute("admin", user.getAdmin());
				
				List<Produit> liste = new ArrayList<>();

				ProduitDao daop = new ProduitDao();
				liste = daop.readAll();

				req.setAttribute("liste", liste);
				req.setAttribute("sizeListe", liste.size());

				req.getRequestDispatcher("HomePage.jsp").forward(req, resp);

			} else {
				resp.sendRedirect("fail.html");
			}
		} else // si utilisateur déja connecté

		if (user.getAdmin() == 'Y') { //si il est admin

			List<Produit> liste = new ArrayList<>();

			ProduitDao daop = new ProduitDao();
			liste = daop.readAll();

			req.setAttribute("liste", liste);
			req.setAttribute("sizeListe", liste.size());

			req.getRequestDispatcher("HomePageAdmin.jsp").forward(req, resp);

		} else {
			
			List<Produit> liste = new ArrayList<>();

			ProduitDao daop = new ProduitDao();
			liste = daop.readAll();

			req.setAttribute("liste", liste);
			req.setAttribute("sizeListe", liste.size());

			req.getRequestDispatcher("HomePage.jsp").forward(req, resp);
		}

	}
}

//				
//				if (user.getAdmin() == 'Y') {
//
//					List<Produit> liste = new ArrayList<>();
//
//					ProduitDao daop = new ProduitDao();
//					liste = daop.readAll();
//
//					req.setAttribute("liste", liste);
//					req.setAttribute("sizeListe", liste.size());
//
//					req.getRequestDispatcher("HomePageAdmin.jsp").forward(req, resp);
//				} else {
//
//					List<Produit> liste = new ArrayList<>();
//
//					ProduitDao daop = new ProduitDao();
//					liste = daop.readAll();
//
//					req.setAttribute("liste", liste);
//					req.setAttribute("sizeListe", liste.size());
//					
//					req.getRequestDispatcher("HomePage.jsp").forward(req, resp);
//
//				}
//			} else {
//				resp.sendRedirect("fail.html");
//			}
//		} else {
//			
//			if (user.getAdmin() == 'Y') {
//
//				List<Produit> liste = new ArrayList<>();
//
//				ProduitDao daop = new ProduitDao();
//				liste = daop.readAll();
//
//				req.setAttribute("liste", liste);
//				req.setAttribute("sizeListe", liste.size());
//
//				req.getRequestDispatcher("HomePageAdmin.jsp").forward(req, resp);
//			} else {
//
//				List<Produit> liste = new ArrayList<>();
//
//				ProduitDao daop = new ProduitDao();
//				liste = daop.readAll();
//
//				req.setAttribute("liste", liste);
//				req.setAttribute("sizeListe", liste.size());
//				
//				req.getRequestDispatcher("HomePage.jsp").forward(req, resp);
//			
