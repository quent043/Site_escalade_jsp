<%@page import="com.fr.adaming.entity.Produit"%>
<%@page import="com.fr.adaming.dao.ProduitDao"%>
<%@page import="java.util.List" contentType= "text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <title>ClimbWorld - Fullfil your dreams</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    .navbar-inverse{
      color: 
    }
    
    /* Remove the jumbotron's default bottom margin */ 
    .jumbotron {

      margin-bottom: 0;
    }
    .jumbotron1 {
     background-image: url("C:/Users/INTI/Documents/Web Statique/Photos_Website/31646980-2.jpg");
     background-size: cover;
     height: 250px;
     font-size: 50pt; 
     color: #716565;


        }

    .titre {
      font-size: 80pt;
      text-align:left;
      color: #1E2046;
      font: bold;
     font-family: 'Lato', sans-serif;
     margin-left: 0px;
     
     }

    .soustitre {
      font-size: 50pt;
      text-align:bottom;
     text-align:right;
     font-family: 'Lato', sans-serif;
     color: #4953D7;
     font: bold;
     }

   
      .quote {
      font-size: 30pt;
      text-align:bottom;
    
     color: #383535;
     }

     .author{
      background: none;
      color: #544E4E;
      font-size:20pt ;
     }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    body{
    height: 150vh;
    background-image: url('C:/Users/INTI/Documents/Web Statique/Photos_Website/IMG_0948-960x640.jpg');
    background-size: cover;
    background-attachment: fixed;
    }



blockquote {
    border-left: 5px solid #4F4F54;
    page-break-inside: avoid;
  }

  </style>
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
</head>
<body>

<div class="jumbotron1">
  <div class="container"> 

    <h1 class ="titre">ClimbWorld</h1>      
    <p class="soustitre">Matos de pro</p><br>
    
  </div>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a href="https://www.chucknorrisfacts.fr/"><img src="C:\Users\INTI\Documents\Web Statique\Photos_Website\images.png" height="50px" width="50px" style="margin-left: auto; margin-right: 20px;"></a>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="listeProduits">Home</a></li>
          <li><a href="file:///C:/Users/INTI/Documents/Web%20Statique/About.html">About</a></li>
      </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Produits<span class="caret" ></span></a>
        <ul class="dropdown-menu" >
          <li><a href="listeProduits">Liste Produits</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin<span class="caret" ></span></a>
        <ul class="dropdown-menu" >
          <li><a href="/SiteEscalade/CréerProduit.jsp">Créer Produit</a></li>
          <li><a href="/SiteEscalade/UpdateUser.jsp">Update User</a></li>
          
        </ul>
      </li>
        <li><a href="C:\Users\INTI\Documents\Web Statique\Contact.html">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>

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
