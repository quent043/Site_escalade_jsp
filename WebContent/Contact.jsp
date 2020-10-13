<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
<%@include file="Header.html" %>


<div class="container">  
  <h1 style="text-align: center; font-family: Lato;font-weight: bolder; color: #FEFEFE; font-size:30pt">Pour nous écrire</h1><br><br>
  <h2></h2>

  <div class="row">
    <div class="col-sm-6">
      <div class="panel panel-primary">

        <div class="panel-body" style="border: 10px; padding: 35px;">
          <input class="form-control" type="text" name="name" value="" size="40" placeholder="Votre nom*" /><br><br>
          <input class="form-control" type="text" name="name" value="" size="40" placeholder="Votre prénom*" /><br><br>
          <input class="form-control" type="text" name="name" value="" size="40" placeholder="Votre e-mail" /><br><br>
          <input class="form-control" type="text" name="name" value="" size="40" placeholder="Votre téléphone*" /><br><br>

        </div>

      </div>
    </div>
    <div class="col-sm-6">
      <div  class="panel panel-primary" style="border: 10px; padding: 35px;">

        <select name="your-subject" class="form-control" >
          <option>Votre demande concerne...</option>
          <optgroup label="Matos">
            <option>Informations</option>
            <option>RH</option>
            <option>Commercial</option>
            <optgroup label="Pognon">
              <option>SAV</option>
              <option>Plainte</option></select><br><br>

              <textarea  name="your-message" rows="14" cols="30" class="form-control" id="your-message" aria-invalid="false" placeholder="Votre Message"  ></textarea></div>




            </div>

          </div>

        </div>
      </div>
      <center><input type="submit" value="Envoyer" class="btn" /></center>



      <br><br><br>

      <footer class="container-fluid text-center">
        <p>ClimbWorld Copyright</p>  
        <form class="form-inline">Pour recevoir du spam:
          <input type="email" class="form-control" size="50" placeholder="Email Address">
          <button type="button" class="btn btn-danger">Sign Up</button>
        </form>
      </footer>

    </body>
    </html>
