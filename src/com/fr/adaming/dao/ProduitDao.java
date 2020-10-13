package com.fr.adaming.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.fr.adaming.entity.Produit;

public class ProduitDao {

	private SessionFactory sessionFactory;
	private Session session;

	public ProduitDao() {
		this.sessionFactory = new Configuration().configure().buildSessionFactory();
		this.session = this.sessionFactory.getCurrentSession();
	}

	public void create(Produit object) {
		this.session.beginTransaction();
		this.session.save(object);
	}


	public Produit readById(Long id) {
		this.session.beginTransaction();
		Query requete = this.session.createQuery("from Produit where idp=:id");
		requete.setParameter("id", id);
		List<Produit> lili = requete.getResultList();

		if(lili.isEmpty()) {
			return null;
		}else{
			Produit produit = (Produit)requete.getSingleResult();
			System.out.println("DEBUG readByid : idp="+id+" le nom de l'utilisateur est "+produit.getTitre());

			return produit;	
		}

	}
	
	public List<Produit> readAll() {
		this.session.beginTransaction();
		Query requete = this.session.createQuery("from Produit");
		
			List<Produit> list = requete.getResultList();
//			System.out.println("DEBUG readByid : idp="+id+" le nom de l'utilisateur est "+produit.getNom());

			return list;	
		

	}

	public void closeSession() {
		this.session.close();
		this.sessionFactory.close();
	}

}
