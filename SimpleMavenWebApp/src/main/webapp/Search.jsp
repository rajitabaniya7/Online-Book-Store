<%@ page import="com.sun.jersey.api.client.Client, com.sun.jersey.api.client.ClientResponse, com.sun.jersey.api.client.WebResource" %>


<%! int fontSize; String error; String output; %> 

<html>
<%@include file="includes/header.jsp"%>


<nav id="nav" class = "navbar navbar-default" role = "navigation">	
	      <ul class = "nav navbar-nav">
         <li ><a href = "index.jsp">Home</a></li>
         <li><a href = "sitemap.jsp">Site Map</a></li>
         <li  class="active"><a href = "#">Catalog Search</a></li>
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

  

  <h1 align="center" >Search page</h1>
  <div class="container col-4">
    <div class="row">
  <div class = "col-md-4 col-md-offset-4 ">
  <form  action="searchresult.jsp"id="searchcat" >
  
  <!--  minprice:
   <input type="text" name="minprice" placeholder="min"><br/>
   maxprice:
   <input type="text" name="maxprice" placeholder="max."><br/>
 
 -->
  
   publisher:
    <input type="text" name="publisher" placeholder="publisher.."><br/>
    
    
   category
    <select name="category">
      <option value="books" >books</option>
      <option value="videos">video</option>
      <option value="audeo">Audio</option>
    </select><br/>
    
   
   <button type="submit" value="SEARCH">Submit</button>
  <button type="reset" value="Reset">Reset</button>


  </form>
  </div>
  </div>
</div>



<!-----start fo footer-->

<div id="footer">
      <div id="top-footer">
         <div id="left-footer">
          
            <ul>
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

      <div id="down-footer">
        copyright &copy fitzory catholic boookshop
              </div>

</div>
</body>
</html>


