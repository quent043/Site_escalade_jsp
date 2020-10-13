package com.fr.adaming.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.fr.adaming.entity.Utilisateur;

public class UtilisateurDao {

	private SessionFactory sessionFactory;
	private Session session;

	public UtilisateurDao() {
		this.sessionFactory = new Configuration().configure().buildSessionFactory();
		this.session = this.sessionFactory.getCurrentSession();
	}

	public void create(Utilisateur object) {
		this.session.beginTransaction();
		this.session.save(object);
	}
	
	public void update(Utilisateur object) {
		
		this.session.update(object);
		this.session.getTransaction().commit();
	}

	public Utilisateur readById(Long id) {

		this.session.beginTransaction();
		Query requete = this.session.createQuery("from Utilisateur where id=:idxx");
		requete.setParameter("idxx", id);

		Utilisateur user = (Utilisateur)requete.getSingleResult();
		System.out.println("DEBUG readById : id="+id+" le nom de l'utilisateur est "+user.getNom());

		return user;
	}
	
	public Utilisateur readByEmail(String email) {

		this.session.beginTransaction();
		Query requete = this.session.createQuery("from Utilisateur where email=:mail");
		requete.setParameter("mail", email);

		Utilisateur user = (Utilisateur)requete.getSingleResult();
		System.out.println("DEBUG readByEmail : email="+email+" le nom de l'utilisateur est "+user.getNom());

		return user;
	}

	public Utilisateur readByEmailAndPassword(String email, String password) {
		this.session.beginTransaction();
		Query requete = this.session.createQuery("from Utilisateur where email=:emailxx and password=:pwd");
		requete.setParameter("emailxx", email);
		requete.setParameter("pwd", password);
		List<Utilisateur> lili = requete.getResultList();

		if(lili.isEmpty()) {
			return null;
		}else{
			Utilisateur user = (Utilisateur)requete.getSingleResult();
			System.out.println("DEBUG readByEmailAndPassword : email="+email+" et password = "+password+" le nom de l'utilisateur est "+user.getNom());

			return user;	
		}

	}

	public void closeSession() {
		this.session.close();
		this.sessionFactory.close();
	}

}
