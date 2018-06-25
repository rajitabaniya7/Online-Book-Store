
<%@ page import="com.sun.jersey.api.client.Client, com.sun.jersey.api.client.ClientResponse, com.sun.jersey.api.client.WebResource, org.json.*" %>

<%! int fontSize; String error; String output; %> 

<html>
<%@include file="includes/header.jsp"%>


<nav id="nav" class = "navbar navbar-default" role = "navigation">	
	      <ul class = "nav navbar-nav">
          <li class = "active"><a href = "#">Home</a></li>
         <li><a href = "sitemap.jsp">Site Map</a></li>
         <li><a href = "Search.jsp">Catalog Search</a></li>
         <li><a href = " maintenace.jsp">Catalog Maintenance </a></li>
         <li><a href = "#">Your Account</a></li>

			
         <li class = "dropdown">
            <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown">
               Category
               <b class = "caret"></b>
               
            </a>
            
            <ul class = "dropdown-menu">
               <li><a href = "#">Books</a></li>
               <li><a href = "#">Music</a></li>
               <li><a href = "#">videos</a></li>
               
               <li class = "divider"></li>
               <li><a href = "#">Separated link</a></li>
               
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

 

	
<div id="content">
 <div id="left-content">
   <div>
   <h1><b> welcome to fitzory bookshop</b></h1></br>
   <h3>you can get varieties of books or e-books,audio and video files<br/>
   search from the bar your required book from author or title of the book 
   </h3>
   </div>

 </div>
 

<div id="right-content">
   <!--  <img src="images/shelf1.jpg" width="300px" height="300px">-->
   
   
   <!-- caro start -->
   
   <div id="myCarousel" class="carousel slide" data-interval="30" data-ride="carousel">
    <!-- Carousel indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>   
    <!-- Carousel items -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="images/shelf1.jpg" alt="First Slide">
            <div class="carousel-caption">
                <h3>First slide label</h3>
                <p>Lorem ipsum dolor sit amet...</p>
            </div>
        </div>
        <div class="item">
            <img src="images/caro2.jpg" alt="Second Slide">
            <div class="carousel-caption">
                <h3>Second slide label</h3>
                <p>Aliquam sit amet gravida nibh, facilisis...</p>
            </div>
        </div>
        <div class="item">
            <img src="images/slide3.png" alt="Third Slide">
            <div class="carousel-caption">
                <h3>Third slide label</h3>
                <p>Praesent commodo cursus magna vel...</p>
            </div>
        </div>
    </div>
    <!-- Carousel nav -->
    <a class="carousel-control left" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>
  <!-- caro ends -->
  
</div>
 </div>


<!-----start fo footer-->

<div id="footer">
      <div id="top-footer">
         
           <ul>
               <b>Contact US</b><br/>
               Fitzory Catholic Bookshop<br/>
               42 Edward street,north sydney<br/>
               0424648563
            </ul>
           
         </div>
        
     

      <div id="down-footer">
        copyright &copy fitzory catholic boookshop
      </div>

</div>

</body>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</html>



