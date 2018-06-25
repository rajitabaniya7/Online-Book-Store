<%@ page import="com.sun.jersey.api.client.Client, com.sun.jersey.api.client.ClientResponse, com.sun.jersey.api.client.WebResource" %>



<html>
<body>
<%! String error; String output; %> 

	<%
 // Create Client
     Client client = Client.create();
 	 
     
     
     
     //-------------------FOLLOWING CODE USES jersey-webapp WEB SERVICE ----------------------
     
      WebResource webResource = client.resource("http://localhost:8080/jersey-webapp/webapi/employees/");
     
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
     
     
     
     /*-----------------------POST-------------------------------
     
      //POST followed by GET
   webResource = client.resource("http://localhost:8080/jersey-webapp/webapi/employees/create");
	 
     
     String input = "{\"id\":\"3\", \"age\":50,\"name\":\"Chris\"}";
     
	  ClientResponse resPost = webResource.type("application/json").post(ClientResponse.class,input );
	  if (resPost.getStatus() != 200) {
     
        
         error = "Post Failed with HTTP Error code: " + response.getStatus()+"\n";
         error +="Response content type: " + response.getContentType()+"\n";
         error+= resPost.getEntity(String.class);
         
         out.println("Error: "+error);
         return;
     }
     
     webResource = client.resource("http://localhost:8080/jersey-webapp/webapi/employees/");
     ClientResponse res = webResource.accept("application/json").get(ClientResponse.class);
 
     // Status 200 is successful.
     if (res.getStatus() != 200) {
     
         
         error = "Get Failed with HTTP Error code: " + response.getStatus()+"\n";
         error+= res.getEntity(String.class);
         
         out.println("Error: "+error);
         return;
     }
 
     output = res.getEntity(String.class);
 
     output+="\nOutput from Server .... \n";
     out.println(output);
     
     */
     //-----------------------POST-------------------------------
     
     /*
      //Update using PUT - Change Employee 1  from Florene to Flo
      webResource = client.resource("http://localhost:8080/jersey-webapp/webapi/employees/update/1");
    String updateData = "{\"id\":\"1\", \"age\":3,\"name\":\"Florene\"}";
     
      ClientResponse resPut = webResource.type("application/json").put(ClientResponse.class, updateData);
	  if (resPut.getStatus() != 200) {
     
         
         error = "Put Failed with HTTP Error code: " + response.getStatus()+"\n";
         error+= resPut.getEntity(String.class);
         
         out.println("Error: "+error);
         return;
     }
     
     webResource = client.resource("http://localhost:8080/jersey-webapp/webapi/employees");
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
     
     
     
     
     
     
     
     /*
     webResource = client.resource("http://localhost:8080/jersey-webapp/webapi/employees/delete/2");
     ClientResponse resDel = webResource.type("application/json").delete(ClientResponse.class);
     // Status 200 is successful.
     if (resDel.getStatus() != 200) {
     
         
         error = "Get Failed with HTTP Error code: " + response.getStatus()+"\n";
         error+= resDel.getEntity(String.class);
         
         out.println("Error: "+error);
         return;
     }
     output = resDel.getEntity(String.class);
 
     output+="\nOutput from Server .... \n";
     out.println(output);
     */
     
     
	%> 

</body>
</html>

