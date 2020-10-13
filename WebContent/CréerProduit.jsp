<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<%@include file="Header.html" %>

<div class="container">  
  <h1 style="text-align: center; font-family: Lato;font-weight: bolder; color: #FEFEFE; font-size:30pt">Créer un produit</h1><br><br>
  
  
 
</form>
<form action="creerProduit" method="post">
  <div class="row">
    <div class="col-sm-12">
      <div class="panel panel-primary">
        <div class="panel-body" style="border: 10px; padding-left: 35px; padding-right: 35px; padding-bottom: 35px;">
          <h2 style="font-style: italic; font-family: Lato; font-size: 11pt; color: grey">Veuillez remplir le formulaire:</h5>
            <div class="form-row">
              <div class="col-md-6 form-group">
                <label style="color: black; font-style: italic">Titre</label>
                <input class="form-control" type="text" name="titre" value="" size="40" placeholder="Titre*">
              </div>
              <div class="col-md-6 form-group">
                <label style="color: black; font-style: italic">Sous Titre</label>
                <input class="form-control" type="text" name="sousTitre" value="" size="40" placeholder="Sous-Titre">
              </div>
              <br>
              
              </div>
           
            
              <div class="col-sm-6 form-group">
                <label style="color: black; font-style: italic">Description</label>
                  <textarea class="form-control" rows="10" cols="30" placeholder="Description" name="description" size="40" placeholder="Décris l'objet"></textarea>

          </div>
          <div class="col-sm-3 form-group">
                <label style="color: black; font-style: italic">Prix</label>
                  <input class="form-control" type="text" name="prix" value="" size="40" placeholder="Prix en euro*">

          </div>

           <div class="form-row">
              <div class="col-md-12 form-group">
                 <label style="color: black; font-style: italic">Photo</label>
                  <input class="form-control" type="text" name="photo" value="" size="40" placeholder="URL de la photo">
               </div>
             </div>
              <div class="form-row">
               <div class="col-md-6 form-group">
                 <label style="color: black; font-style: italic">Bandeau</label>
                  <input class="form-control" type="text" name="bandeau" value="" size="40" placeholder="bandeau inférieur">
               </div>
               <div class="col-md-6 form-group">
                 <label style="color: black; font-style: italic">Caractéristiques</label>
                  <textarea class="form-control" rows="20" cols="30" name="carac" value="" size="40" placeholder="Caractéristiques de l'objet"></textarea>
               </div>
             </div>
             
           </div>
           <div class="col-md-2">
       <center><button type="submit" class="btn btn-primary">Créer</button></center><br>
       </div>
       </div>
            
  
</form>

        </div>

      </div>
    </div>
   
  </div>
</div><br><br><br>

<footer class="container-fluid text-center">
  <p>ClimbWorld Copyright</p>  
  <form class="form-inline">Pour recevoir du spam:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>


</body>
</html>