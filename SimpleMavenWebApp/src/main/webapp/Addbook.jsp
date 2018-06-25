
<%@ page import="com.sun.jersey.api.client.Client, com.sun.jersey.api.client.ClientResponse, com.sun.jersey.api.client.WebResource, org.json.*" %>
<%@ page import="java.io.*,  com.sun.jersey.api.client.Client, com.sun.jersey.api.client.ClientResponse, com.sun.jersey.api.client.WebResource, org.json.*" %>
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

<h2> cheers!Added successfully</h2>
<%@ page import="java.io.*,  com.sun.jersey.api.client.Client, com.sun.jersey.api.client.ClientResponse, com.sun.jersey.api.client.WebResource, org.json.*" %>

<%!  String id; String book_name; String isbn; String quantity; String category; String publisher; String Author; String price; String image; %>

<%! 
public boolean valid(String book_name){
	if(book_name == ""){
		return false;
	}
	return true;
}
%>

<%
	// Create Client
    Client client = Client.create();

     
     //-------------------FOLLOWING CODE USES jersey-webapp WEB SERVICE ----------------------
     
    WebResource webResource = client.resource("http://localhost:8080/jersey-webapp/webapi/books/");
     
     /*
     //GET
     ClientResponse res = webResource.accept("application/json").get(ClientResponse.class);
 
     // Status 200 is successful.
     if (res.getStatus() != 200) {
     
         
         error = "Failed with HTTP Error code: " + response.getStatus()+"\n";
         error+= res.getEntity(String.class);
         
         out.println("Error: "+error);
         return;
     }
 
     output = res.getEntity(String.class);
 
     output+="\nOutput from Server .... \n";
     out.println(output);
     */
     
     
     
     //-----------------------POST starts-------------------------------
book_name = request.getParameter("book_name");
isbn = request.getParameter("isbn");
quantity = request.getParameter("quantity");
category = request.getParameter("category");
publisher = request.getParameter("publisher");
Author = request.getParameter("Author");
price = request.getParameter("price");
image= request.getParameter("image");



if(valid(book_name)){
	%>
<html>
<head>


<div class="container">

	<%
	image = request.getParameter("image");

    //POST followed by GET
	webResource = client.resource("http://localhost:8080/HelloRESTful/rest/books/create");
	 
   
	JSONObject bookJSON = new JSONObject();
	//bookJSON.put("id", id);
	bookJSON.put("book_name", book_name);
	bookJSON.put("isbn", isbn);
	bookJSON.put("quantity", quantity);
	bookJSON.put("category", category);
	bookJSON.put("publisher", publisher);
	bookJSON.put("Author", Author);
	bookJSON.put("price", price);
	bookJSON.put("image", image);
    
   //String input = "{\"id\":\"3\", \"age\":\"50\",\"name\":\"Chris\"}";
   String input =   bookJSON.toString();
   
   //out.println("Error: "+input);
	  ClientResponse resPost = webResource.type("application/json").post(ClientResponse.class,input );
	  if(resPost.getStatus() == 200){
		  %><b>Cheers!<br/>Product added sucessfully.</b><%
	  }else if (resPost.getStatus() != 200) {
   
      
       error = "Post Failed with HTTP Error code: " + resPost.getStatus()+"\n";
       error +="Response content type: " + response.getContentType()+"\n";
       error+= resPost.getEntity(String.class);
       
       out.println("Error: "+error);
       return;
   }
   
 
   
   //-----------------------POST ends-------------------------------
   
   
	%> 
	
</div> <!-- /container -->
<jsp:include page="includes/footer.jsp"/>
</body>
</html>
	
<%
}else{
	String redirectURL = "http://localhost:8899/FitzroyBookshop/catalogue-maintenance.jsp?msg=error";
    response.sendRedirect(redirectURL);
}

%>





</div>

<!-----start fo footer-->

<div id="footer">
      <div  style="color:white;" id="top-footer">
         
           <ul style="color:white;">
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



