package com.fr.adaming.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fr.adaming.dao.ProduitDao;
import com.fr.adaming.entity.Produit;

public class DetailProduitServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long idp = Long.parseLong(request.getParameter("idp"));
		Produit produit = new Produit();
		ProduitDao dao = new ProduitDao();
		
		produit = dao.readById(idp);
		
		request.setAttribute("id", produit.getIdp());
		request.setAttribute("titre", produit.getTitre());
		request.setAttribute("sousTitre", produit.getSousTitre());
		request.setAttribute("description", produit.getDescription());
		request.setAttribute("carac", produit.getCaracteristiques());
		request.setAttribute("photo", produit.getPhoto());		
		request.setAttribute("prix", produit.getPrix());		
		request.setAttribute("bandeau", produit.getBandeau());
		
		request.getRequestDispatcher("ProduitDetail.jsp").forward(request, response);
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	

	
}
