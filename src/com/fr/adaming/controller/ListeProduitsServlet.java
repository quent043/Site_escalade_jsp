package com.fr.adaming.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fr.adaming.dao.ProduitDao;
import com.fr.adaming.entity.Produit;

public class ListeProduitsServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Produit> liste = new ArrayList<>();
	
		ProduitDao dao = new ProduitDao();
		liste = dao.readAll();
		
		session.setAttribute("liste", liste);		
		session.setAttribute("sizeListe", liste.size());
		request.setAttribute("liste", liste);		
		request.setAttribute("sizeListe", liste.size());
		
		request.getRequestDispatcher("HomePage.jsp").forward(request, response);
		
		
		
		
		
//		System.out.println("DEBUG image du produit : " + liste.getPhoto());
//		HttpSession session = req.getSession();
//		req.setAttribute("idp", liste.getId());
//		req.setAttribute("nomp", liste.getNom());
//		req.setAttribute("typep", liste.getType());
//		req.setAttribute("photop", liste.getPhoto());
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		
	}

}
