<%@page import="com.fr.adaming.entity.Produit"%>
<%@page import="com.fr.adaming.dao.ProduitDao"%>
<%@page import="java.util.List" contentType= "text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html lang="en">

<%@include file="Header.html" %>

<div class="container">
  
  <blockquote>
    <p class = "quote">Si vous n'escaladez pas de montagnes, vous ne pourrez jamais profiter de la vue.</p>
    <footer class = "author">Pablo Neruda</footer>
  </blockquote>
</div><br><br>








<div class="container">
  <h2 align="center">Promos</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active" align="center">
       <center> <a href="file:///C:/Users/INTI/Documents/Web%20Statique/ProduitDetail.html"> <img src="C:\Users\INTI\Documents\Web Statique\Photos_Website\degaines_grand.png" alt="Los Angeles" align="center" style="width:50%, height:50%;"></a></center>
      </div>

      <div class="item">
        <center><img src="C:\Users\INTI\Documents\Web Statique\Photos_Website\capture.png" alt="Chicago" style="width:50%, height:50%;"></center>
      </div>
    
      <div class="item">
        <center><img src="C:\Users\INTI\Documents\Web Statique\Photos_Website\capture2.png" alt="New york" style="width:50%, height:50%;"></center>
      </div>
    </div><br><br><br><br><br>


    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div><br><br><br><br><br>

<div class="container">    
  <div class="row">

<c:forEach  items="${requestScope.liste}" var="i">


    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">${i.getTitre()}</div>
        <div class="panel-body">
        <%--  <a href="detailProduit?idp=${i.getId()}"><img src="${i.getPhoto()}"  height="210" class="img-responsive" style="width:340px" alt="Image"></a>
           --%>
            <a href="detailProduit?idp=${i.getIdp()}"><img src="${i.getPhoto()}"  height="210" class="img-responsive" style="width:340px" alt="Image"></a>
          
          </div>
        <div class="panel-footer">${i.getBandeau()}</div>
      
      </div>
    </div>
     </c:forEach>
  </div>
</div><br>

<footer class="container-fluid text-center">
  <p>ClimbWorld Copyright</p>  
  <form class="form-inline">Pour recevoir du spam:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>
