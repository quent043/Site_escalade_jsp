<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<%@include file="Header.html" %>

<div class="container">  
  <h1 style="text-align: center; font-family: Lato;font-weight: bolder; color: #FEFEFE; font-size:30pt">Mise à jour d'un utilisateur</h1><br><br>
  
  
 
</form>
<form action="updateUser" method="post">
  <div class="row">
    <div class="col-sm-12">
      <div class="panel panel-primary">
        <div class="panel-body" style="border: 10px; padding-left: 35px; padding-right: 35px; padding-bottom: 35px;">
          <h2 style="font-style: italic; font-family: Lato; font-size: 11pt; color: grey">Mise à jour d'un utilisateur</h5>
            <div class="form-row">
              <div class="col-md-6 form-group">
                <label style="color: black; font-style: italic">email de l'utilisateur à modifier</label>
                <input class="form-control" type="text" name="emailUpdate" value="" size="40" placeholder="email">
              </div>
              
              <br>
              
              </div>
           
            
              <div class="col-sm-6 form-group">
                <label style="color: black; font-style: italic">Nouvel ID</label>
                  <input class="form-control" type="text" name="id" value="" size="40" placeholder="id">

          </div>
          <div class="col-sm-6 form-group">
                <label style="color: black; font-style: italic">Nouvel email</label>
                  <input class="form-control" type="text" name="email" value="" size="40" placeholder="email">

          </div>

           <div class="form-row">
              <div class="col-md-12 form-group">
                 <label style="color: black; font-style: italic">Nouveau nom</label>
                  <input class="form-control" type="text" name="nom" value="" size="40" placeholder="nom">
               </div>
             </div>
              <div class="form-row">
               <div class="col-md-6 form-group">
                 <label style="color: black; font-style: italic">Nouveau prénom</label>
                  <input class="form-control" type="text" name="prenom" value="" size="40" placeholder="prénom">
               </div>
               <div class="col-md-6 form-group">
                 <label style="color: black; font-style: italic">Nouvelle date de naissance</label>
                  <input class="form-control" type="text" name="dateNaissance" value="" size="40" placeholder="xx/xx/xxxx">
               </div>
             </div>
             
              <div class="form-row">
              <div class="col-md-2 form-group">
                 <label style="color: black; font-style: italic">Droits admin (Y/N)</label>
                  <input class="form-control" type="text" name="admin" value="" size="40" placeholder="Y/N">
               </div>
             </div>
             
             </div>
             
           <div class="col-md-2">
       <center><button type="submit" class="btn btn-primary">Update</button></center><br><br><br><br>
     
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