<%@ page import="com.sun.jersey.api.client.Client, com.sun.jersey.api.client.ClientResponse, com.sun.jersey.api.client.WebResource" %>


<%! int fontSize; String error; String output; %> 
<html>
<%@include file="includes/header.jsp" %>


<nav id="nav" class = "navbar navbar-default" role = "navigation">	
	      <ul class = "nav navbar-nav">
         <li ><a href = "index.jsp">Home</a></li>
         <li><a href = "sitemap.jsp">Site Map</a></li>
         <li><a href = "Search.jsp">Catalog Search</a></li>
         <li class = "active"><a href = "#">Catalog Maintenance </a></li>
         <li><a href = "index.jsp">Your Account</a></li>

			
         <li class = "dropdown">
            <a href = "" class = "dropdown-toggle" data-toggle = "dropdown">
               Category
               <b class = "caret"></b>
               
            </a>
            
            <ul class = "dropdown-menu">
               <li><a href = "#">Books</a></li>
               <li><a href = "#">Music</a></li>
               <li><a href = "#">videos</a></li>
               
               <li class = "divider"></li>
               <li><a  href = "#">Separated link</a></li>
               
               <li class = "divider"></li>
               <li><a href = "#">One more separated link</a></li>
            </ul>
            
         </li>
	   </ul>
	  <div class="input-group" a>
            <input type="text" class="form-control" placeholder="Search...." name="q">
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
  </nav>
  <div class="container col-4">
    <div class="row">
  <div class = "col-md-4 col-md-offset-4 ">
  <form action="Addbook.jsp" id="searchcat" >
    ISBN:
    <input type="text" name="isbn" placeholder="ISBN"><br/>
    
    Category:
    <select name="category">
      <option value="books" >books</option>
      <option value="videos">video</option>
      <option value="music">Audi0</option>
       <option value="Audeo books">Audi0</option>
    </select ><br/>
    publisher:
      <select name="publisher">
      <option values="harper collins">collins</option>
      <option values="penguins">havard</option>
      <option values="st pauls publication">penguins</option>
      <option values="franciscan Media">ACU</option>
       <option values="Orbis">Dell</option>
   </select><br/>
   Title:
   <input type="text" name="book_name" placeholder="title.."><br/>
   Author:
   <input type="text" name="Author" placeholder="author.."><br/>
    quantity on hand:
   <input type="text" name="quantity" placeholder="Quantity.."><br/>
   price:
   <input type="number" name="price"placeholder="price($)">
   Image:
   <input type="text" name="image"placeholder="Image">
   
   <!-- price jquery slider
   -->
   <button  type="submit" value="Submit">Add book</button>
  <button type="reset" value="Reset">Reset</button>


  </form>
  </div>
  </div>
</div>
  
<!-----start fo footer-->

<div id="footer">
      <div id="top-footer">
         <div id="left-footer">
          
            <ul style="color:white;">
               <b>Contact US</b><br/>
               Fitzory Catholic Bookshop<br/>
               42 Edward street,north sydney<br/>
               0424648563
            </ul>
           
         </div>
         <div id="mid-footer">
            <ul class="social">
                  <li><a href="https://facebook.com" target ="_blank"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="https://instagram.com" target ="_blank"><i class="fa fa-instagram"></i></a></li>
                  <li><a href="https://plus.google.com" target ="_blank"><i class="fa fa-google-plus"></i></a></li>
                  <li><a href="https://twitter.com" target ="_blank"><i class="fa fa-twitter"></i></a></li>
                  <li><a href="https://linkedin.com" target ="_blank"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          
           

         </div>
        
         

      </div>

      <div style="color:white;" id="down-footer">
        copyright &copy fitzory catholic boookshop
              </div>

</div>
</body>
</html>


