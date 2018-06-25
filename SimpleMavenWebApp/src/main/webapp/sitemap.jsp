<%@ page import="com.sun.jersey.api.client.Client, com.sun.jersey.api.client.ClientResponse, com.sun.jersey.api.client.WebResource" %>


<%! int fontSize; String error; String output; %> 

   
<%@include file="includes/header.jsp" %>



<nav id="nav" class = "navbar navbar-default" role = "navigation">	
	      <ul class = "nav navbar-nav">
         <li ><a href = "index.jsp">Home</a></li>
         <li class = "active"><a href = "#">Site Map</a></li>
         <li><a href = "Search.jsp">Catalog Search</a></li>
         <li><a href = "maintenace.jsp">Catalog Maintenance </a></li>
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
   <div id="top">
   
    </div>
   <div id="bottom">
   <div class="jumbotron"><h2> <b>Quick Links</b></h2>
   <div class="">
       <h3> <a href="index.jsp" >Home</a><br/></h3>
       <h3> <a href="maintenace.jsp" >catalogue maintenance page</a><br/></h3>
       <h3> <a href="Search.jsp" >search page</a><br/></h3>
       <h3> <a href="sitemap.jsp" >sitemap</a><br/></h3>
        
    </div>
    </div>
  </div>
  </div>
<div id="right-content">
   <img src="images/shelf1.jpg" width="300px" height="300px">
   
</div>
</div>

<!-----start fo footer-->

<div id="footer">
      <div id="top-footer">
         <div id="left-footer">
          
            <div style="color:white;">
               <b>Contact US</b><br/>
               Fitzory Catholic Bookshop<br/>
               42 Edward street,north sydney<br/>
               0424648563
            </div>
           
         </div>
         <div id="mid-footer">
            <ul class="social">
                  <li><a href="https://facebook.com" target ="_blank"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="https://instagram.com" target ="_blank"><i class="fa fa-instagram"></i></a></li>
                  <li><a href="https://plus.google.com" target ="_blank"><i class="fa fa-google-plus"></i></a></li>
                  <li><a href="https://twitter.com" target ="_blank"><i class="fa fa-twitter"></i></a></li>

            </ul>
          </div>
      </div>

      <div style="color:white;" id="down-footer">
        copyright &copy fitzory catholic boookshop
      </div>
</div>
</body>
</html>


