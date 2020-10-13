package com.fr.adaming.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fr.adaming.dao.ProduitDao;
import com.fr.adaming.dao.UtilisateurDao;
import com.fr.adaming.entity.Produit;
import com.fr.adaming.entity.Utilisateur;

public class ProduitServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Long idp = null;
		String titre = null, sousTitre = null, description=null, caracteristiques=null, photo=null, prix=null, bandeau=null ;
		
		titre = req.getParameter("titre");
		sousTitre = req.getParameter("sousTitre");
		description = req.getParameter("description");
		caracteristiques = req.getParameter("carac");
		photo = req.getParameter("photo");
		prix = req.getParameter("prix");
		bandeau = req.getParameter("bandeau");
	

		Produit produit = new Produit(idp, titre, sousTitre, description, caracteristiques, photo, prix, bandeau);
				
		ProduitDao dao = new ProduitDao();
		
		dao.create(produit);

		
		req.setAttribute("id", produit.getIdp());
		req.setAttribute("titre", produit.getTitre());
		req.setAttribute("sousTitre", produit.getSousTitre());
		req.setAttribute("description", produit.getDescription());
		req.setAttribute("carac", produit.getCaracteristiques());
		req.setAttribute("photo", produit.getPhoto());		
		req.setAttribute("prix", produit.getPrix());		
		req.setAttribute("bandeau", produit.getBandeau());		
		
		

		req.getRequestDispatcher("ProduitDetail.jsp").forward(req, resp); 
		
		
	}
	
	
	
}
