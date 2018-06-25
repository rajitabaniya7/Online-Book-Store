package org.o7planning.hellorestful;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import org.o7planning.hellorestful.DAO.Book;
import org.o7planning.hellorestful.DAO.BookDAO;


//structure

@Path("/books")
public class MyBook {

	@GET
	@Produces("application/json")
	public List<Book> getBook() {
		BookDAO dao = new BookDAO();
		List books = dao.getBooks();
		return books;
	}
	
	
	@POST
	@Path("/create")
	@Consumes("application/json")
	public Response addBook(Book bk){
		bk.setId(bk.getId());
		bk.setBook_name(bk.getBook_name());
		bk.setIsbn(bk.getIsbn());
		bk.setAuthor(bk.getAuthor());
		bk.setCategory(bk.getCategory());
		bk.setPublisher(bk.getPublisher());
		bk.setQuantity(bk.getQuantity());
		bk.setPrice(bk.getPrice());
		bk.setImage(bk.getImage());
		
		BookDAO dao = new BookDAO();
		dao.addBook(bk);
		
		return Response.ok().build();
	}
	@POST
	@Produces("application/json")
	@Path("/search")
	@Consumes("application/json")   //@Consumes("application/X-www-form-urlencoded")
	public List<Book>  searchbook(Book bk){
	//public List<Book>  searchbook(
		//@FormParam("publisher") String publisher,
		//@FormParam("category") String category
		
		
		/* bk.setBook_name(bk.getBook_name());
		bk.setIsbn(bk.getIsbn());
		bk.setAuthor(bk.getAuthor());
		bk.setCategory(bk.getCategory());
		bk.setPublisher(bk.getPublisher());
		bk.setQuantity(bk.getQuantity());
		
		bk.setImage(bk.getImage());  */
		bk.setCategory(bk.getCategory());
		bk.setPublisher(bk.getPublisher());
		bk.setPrice(bk.getPrice());
		
		BookDAO dao = new BookDAO();
		
		
		List books = dao.searchBooks(bk);
		
		//List books=dao.searchBooks(publisher, category);
		
		return books;
		
	}
	@PUT
	@Path("/update/{id}")
	@Consumes("application/json")
	public Response updateBook(@PathParam("id") int id,Book bk){
		BookDAO dao = new BookDAO();
		int count = dao.updateBook(id, bk);
		if(count==0){
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}
	
	@DELETE
	@Path("/delete/{id}")
	@Consumes("application/json")
	public Response delete(@PathParam("id") int id){
		BookDAO dao = new BookDAO();
		int count = dao.deleteBook(id);
		if(count==0){
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}
}
