<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<%@include file="Header.html" %>

<div class="container">    
  <div class="row">
    <div class="col-sm-4"></div>
    <div class="col-sm-4" style="text-align: center;">
      <div class="panel panel-primary">
        
        <div class="panel-body" style="font-size: 15pt; font-family: Lato; color: grey; font-style:italic; padding: 20px">
          

          <center>
            <h2>Nom: <%=session.getAttribute("nom") %></h2>
            <h2>Prénom: <%=session.getAttribute("prenom") %></h2>
            <h2>Adresse: <%=session.getAttribute("adresse") %></h2>
            <h2>email: <%=session.getAttribute("email") %></h2>
            <h2>id: <%=session.getAttribute("id") %></h2>
            <h2>Date de naissance: <%=session.getAttribute("dateNaissance") %></h2>
            
           


          </center>
          </div>
      </div>
    </div>
        <div class="col-sm-4"></div>
  </div>
  <center><a href="disconnect" value="disconnect" style="color: black">Disconnect</a></center>
  <div/>



<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<footer class="container-fluid text-center">
  <p>ClimbWorld Copyright</p>  
  <form class="form-inline">Pour recevoir du spam:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>
