<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="en">

<%@include file="Header.html" %>


  


<div>
  <div class="container" style="margin-left: 260px;">
    <div class="col-sm-10">
      <div class="panel panel-primary">
        <div class="panel-heading" style="font-family: 'Lato', sans-serif; font-size: 20pt; padding-left:40px"><%=request.getAttribute("titre") %></div>
        <div class="panel-body" style="padding: 20px">
          <table>
            <tr>
              <td> <img src="<%=request.getAttribute("photo") %>"  height="210" class="img-responsive" style="width:340px" alt="Image"></td>
              <td> <fieldset > <legend> <%=request.getAttribute("sousTitre") %> <img src="C:\Users\INTI\Documents\Web Statique\Photos_Website\camp-60_1.png" width="80" style="margin-left: 10px margin-bottom: 10px"></legend> 
                <table>
                  <caption style="font-size: 40">Description<br><br></caption>
                    <tr>
                      <td style="width: 500px"><%=request.getAttribute("description") %></td>
                    </tr>

                  </table><br>
                  <hr><hr/><br>
                  <table>
                    <caption>Caractéristques<br><br>
                    
                    <%=request.getAttribute("carac") %>

                  </table><br>
                  <table>
                    <tr>
                      <td><h1 style="font-size: 20pt">Prix : <%=request.getAttribute("prix") %>E</h1></td>
                      <td><input  style="margin-left: 70px;" type="submit" value="Acheter" class="btn"></td>
                      <td><input style="margin-left: 30px;" type="submit" value="Ajouter au panier" class="btn"></td></tr>
                  
                </table>




              </fieldset></td>
            </tr>

          </table>

         
          </div>
        <div class="panel-footer"><%=request.getAttribute("bandeau") %></div>
      </div>
    </div>
    </div><br><br><br>
</div>
<!-- <div class="photoProduit">
<img src="C:\Users\INTI\Documents\Web Statique\Photos_Website\degaines_grand.PNG">
</div>

<div class="produit">
  <fieldset > <legend align="left"> Personal Views </legend>
    <table>
      <caption>Objective<br><br></caption>
      <tr></tr>
      <td>Objective</td>
      <tr></tr>
      <td>Objective</td>
    </table>

     </fieldset><br><br>
</div>

 -->




<footer class="container-fluid text-center">
  <p>ClimbWorld Copyright</p>  
  <form class="form-inline">Pour recevoir du spam:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>
