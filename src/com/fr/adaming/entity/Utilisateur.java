package com.fr.adaming.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Utilisateur {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nom;
	private String prenom;
	@Column(unique = true)
	private String email;
	private String password;
	private String dateNaissance;
	private char admin = 'N';

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDateNaissance() {
		return dateNaissance;
	}

	public void setDateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
	}

	public char getAdmin() {
		return admin;
	}

	public void setAdmin(char admin) {
		this.admin = admin;
	}

	public Utilisateur() {
		super();
	}

	
	public Utilisateur(String nom, String prenom, String email, String password, String dateNaissance) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.password = password;
		this.dateNaissance = dateNaissance;
		
	}
	
	public Utilisateur(String nom, String prenom, String email, String password, String dateNaissance, char admin) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.password = password;
		this.dateNaissance = dateNaissance;
		this.admin = admin;
	}

	public Utilisateur(Long id, String nom, String prenom, String email, String password, String dateNaissance,
			char admin) {
		super();
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.password = password;
		this.dateNaissance = dateNaissance;
		this.admin = admin;
	}

}
