package com.fr.adaming.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Produit {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idp;
	private String titre;
	private String sousTitre;
	@Column(length = 8000)
	private String description;
	@Column(length = 8000)
	private String caracteristiques;
	private String photo;
	private String prix;
	private String bandeau;
	public Long getIdp() {
		return idp;
	}
	public void setIdp(Long idp) {
		this.idp = idp;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getSousTitre() {
		return sousTitre;
	}
	public void setSousTitre(String sousTitre) {
		this.sousTitre = sousTitre;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCaracteristiques() {
		return caracteristiques;
	}
	public void setCaracteristiques(String caracteristiques) {
		this.caracteristiques = caracteristiques;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getPrix() {
		return prix;
	}
	public void setPrix(String prix) {
		this.prix = prix;
	}
	public String getBandeau() {
		return bandeau;
	}
	public void setBandeau(String bandeau) {
		this.bandeau = bandeau;
	}
	public Produit() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Produit(Long idp, String titre, String sousTitre, String description, String caracteristiques, String photo,
			String prix, String bandeau) {
		super();
		this.idp = idp;
		this.titre = titre;
		this.sousTitre = sousTitre;
		this.description = description;
		this.caracteristiques = caracteristiques;
		this.photo = photo;
		this.prix = prix;
		this.bandeau = bandeau;
	}
	@Override
	public String toString() {
		return "Produit [idp=" + idp + ", titre=" + titre + ", sousTitre=" + sousTitre + ", description=" + description
				+ ", caracteristiques=" + caracteristiques + ", photo=" + photo + ", prix=" + prix + ", bandeau="
				+ bandeau + "]";
	}
	
	
		
	
	
	
	
	
}
