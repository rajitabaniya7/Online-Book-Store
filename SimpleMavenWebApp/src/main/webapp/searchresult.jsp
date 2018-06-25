<%@ page import="com.sun.jersey.api.client.Client, com.sun.jersey.api.client.ClientResponse, com.sun.jersey.api.client.WebResource, org.json.*" %>


<%@ page import="java.io.*,  com.sun.jersey.api.client.Client, com.sun.jersey.api.client.ClientResponse, com.sun.jersey.api.client.WebResource, org.json.*" %>

<%!  String id; String book_name; String isbn; String quantity; String category; String publisher; String Author; String price; String image; %>



<%! int fontSize; String error; String output; %> 
<html>
<%@include file="includes/header.jsp"%>

<nav id="nav" class = "navbar navbar-default" role = "navigation">	
	      <ul class = "nav navbar-nav">
         <li ><a href = "index.jsp">Home</a></li>
         <li><a href = "sitemap.jsp">Site Map</a></li>
         <li class = "active"><a href = "Search.jsp">Catalog Search</a></li>
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
 
 
 <!--json parsing--->
   <div>
   
   <%
   //step1
   
   book_name = request.getParameter("book_name");
   isbn = request.getParameter("isbn");
   quantity = request.getParameter("quantity");
   category = request.getParameter("category");
   publisher = request.getParameter("publisher");
   Author = request.getParameter("Author");
   price = request.getParameter("price");
   image = request.getParameter("image");

	//minPrice = request.getParameter(" minPrice ");
	//maxPrice = request.getParameter(" maxPrice ");
   //step2
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
	//bookJSON.put("minPrice", minPrice);
	//bookJSON.put("maxPrice", maxPrice);

    
   //String input = "{\"id\":\"3\", \"age\":\"50\",\"name\":\"Chris\"}";
   String input =   bookJSON.toString();
   
   
 // Create Client
     Client client = Client.create();
 
     WebResource webResource = client.resource("http://localhost:8080/HelloRESTful/rest/books/search");//step3
 
     ClientResponse res = webResource.type("application/json").post(ClientResponse.class,input);//get:post 
 
     // Status 200 is successful.
     if (res.getStatus() != 200) {
         error = "Failed with HTTP Error code: " + response.getStatus()+"\n";
         error+= res.getEntity(String.class);
         out.println("Error: "+error);
         
     }
     output = res.getEntity(String.class);
     
     //String json = (String)pageContext.getAttribute("dataJson");
    // JSONObject parsedJSON = new JSONObject(output);
     //pageContext.setAttribute("parsedJSON", parsedJSON);
	//JSONArray arr = parsedJSON.getJSONArray("book");
	
	JSONArray arr;
	   if (output.equals("null")){
    	 arr = new JSONArray();
    	 
     } else {
    	//String json = (String)pageContext.getAttribute("dataJson");
         JSONObject parsedJSON = new JSONObject(output);
         //pageContext.setAttribute("parsedJSON", parsedJSON);
          
        if (parsedJSON.get("book") instanceof JSONObject){
        	arr = new JSONArray();
        	arr.put(parsedJSON.getJSONObject("book"));
        } else {
    		arr = parsedJSON.getJSONArray("book");
        }
     }
	
	
	

	//counting number of products
	out.println("Total number of products:" + arr.length());
	
	for (int i = 0; i < arr.length(); i++){
		
		
		
		JSONObject book = arr.getJSONObject(i);

		pageContext.setAttribute("book", book);
		book.getString("book_name");
		pageContext.setAttribute("book_name", book.getString("book_name"));
    	System.out.println(book);
    	%>
    	
    	<div class="alert <% if(Integer.parseInt(book.getString("quantity")) <5) out.println("qty-highlight"); %> col-sm-3 col-lg-3 col-md-3">
    	<div class="thumbnail  ">
    	
                           
                            <div class="caption">
                            <h1 style="color:#176327;"><span><b><% out.print(book.getString("book_name")); %></b></span></h1>
                            
                            
                            
                            
                        	<img  class="pull-right" style="width:400px; height:400px;" alt="Image" src="<% out.print(book.getString("image"));%>"/>         <!-- image -->
                               
                                
                                
                             <!--     <p> <h4 class="pull-right">$<% out.print(book.getString("price")); %></h4></p>-->
                             
                                <p><b>ISBN:</b><% out.print(book.getString("isbn")); %></p>
                                <p><b>Category:</b><% out.print(book.getString("category")); %></p>
                                <p><b>Author:</b><% out.print(book.getString("author")); %></p>
                                <p><b>Publisher:</b><% out.print(book.getString("publisher")); %></p>
                                <p>   <b>Price:<b>$<%out.print(book.getString("price")); %></b></p>
                           <p class=""><b>Quantity:</b><span><% out.print(book.getString("quantity")); %></span></p>
                           
                          </div>
                        </div>
                    </div>
    	<%
	}
     output+="\nOutput from Server .... \n";
     //out.println(output);
	%>
	<!--  trying pagination start-->
	
	

	
	
	<!-- pagination end -->
   
   
   </div>
   </div>
   
   

  
<!----start of footer-->

<div id="footer">
      <div id="top-footer">
         
           <ul style="color:white;">
               <b>Contact US</b><br/>
               Fitzory Catholic Bookshop<br/>
               42 Edward street,north sydney<br/>
               0424648563
            </ul>
           
         </div>
        
     

      <div style="color:white;" id="down-footer">
        copyright &copy fitzory catholic boookshop
      </div>

</div>

</body>
</html>


