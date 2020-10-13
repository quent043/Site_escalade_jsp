<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<%@include file="Header.html" %>

<div class="container">  
  <h1 style="text-align: center; font-family: Lato;font-weight: bolder; color: #FEFEFE; font-size:30pt">Rejoignez-nous</h1><br><br>
  
<form action="register" method="post">
  <div class="row">
    <div class="col-sm-12">
      <div class="panel panel-primary">
        <div class="panel-body" style="border: 10px; padding-left: 35px; padding-right: 35px; padding-bottom: 35px;">
          <h2 style="font-style: italic; font-family: Lato; font-size: 11pt; color: grey">Veuillez remplir le formulaire. Les champs avec des * sont obligatoires:</h5>
            <div class="form-row">
              <div class="col-md-6 form-group">
                <label style="color: black; font-style: italic">Nom*</label>
                <input class="form-control" type="text" name="nom" value="" size="40" placeholder="Votre nom*">
              </div>
              <div class="col-md-6 form-group">
                <label style="color: black; font-style: italic">Prénom*</label>
                <input class="form-control" type="text" name="prenom" value="" size="40" placeholder="Votre prénom*">
              </div>
              <br>
              
              </div>
           
            <div class="form-row">
              <div class="col-md-3 form-group">
                 <label style="color: black; font-style: italic">Rue*</label>
              <select class="form-control" name="">
               
              <option>Rue</option>
              <option>Avenue</option>
              <option>Impasse</option></select>
            </select>
          </div><br>
              <div class="col-sm-6 form-group">
                <label style="color: black; font-style: italic">Votre adresse*</label>
                  <input class="form-control" type="text" name="adresse" value="" size="40" placeholder="Votre adresse*">

          </div>
          <div class="col-sm-3 form-group">
                <label style="color: black; font-style: italic">Code postal*</label>
                  <input class="form-control" type="text" name="cp" value="" size="40" placeholder="Code postal*">

          </div>

           <div class="form-row">
              <div class="col-md-12 form-group">
                 <label style="color: black; font-style: italic">Email*</label>
                  <input class="form-control" type="text" name="email" value="" size="40" placeholder="Email*">
               </div>
             </div>
              <div class="form-row">
               <div class="col-md-6 form-group">
                 <label style="color: black; font-style: italic">Telephone*</label>
                  <input class="form-control" type="text" name="tel" value="" size="40" placeholder="...">
               </div>
               <div class="col-md-6 form-group">
                 <label style="color: black; font-style: italic">Date de naissance</label>
                  <input class="form-control" type="text" name="dateNaissance" value="" size="40" placeholder="...">
               </div>
             </div>
             <div class="form-row">
               <div class="col-md-6 form-group">
                 <label style="color: black; font-style: italic">Mot de passe*</label>
                  <input class="form-control" type="password" name="password" value="" size="40" placeholder="Mot de passe">
               </div>
               <div class="col-md-6 form-group">
                 <label style="color: black; font-style: italic">Confirmez votre mot de passe</label>
                  <input class="form-control" type="password" name="pwd2" value="" size="40" placeholder="Mot de passe">
               </div>
             </div>
           </div>
           <div class="col-md-2">
       <button type="submit" class="btn btn-primary">Sign in</button>
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