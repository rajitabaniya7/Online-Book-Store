package org.o7planning.hellorestful.DAO ;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

@SuppressWarnings("deprecation")
public class BookDAO {

	public void addBook(Book bean){
		
		
		Session session =  SessionUtil.getSession();
		Transaction tx = session.beginTransaction();
		addBook(session,bean);
		tx.commit();
		session.close();
	
	}

	private void addBook(Session session, Book bean){
		
		Book book = new Book();
		book.setId(bean.getId());
		book.setBook_name(bean.getBook_name());
		book.setIsbn(bean.getIsbn());
		book.setCategory(bean.getCategory());
		book.setQuantity(bean.getQuantity());
		book.setAuthor(bean.getPublisher());
		book.setPrice(bean.getPrice());
		book.setPublisher(bean.getPublisher());
		book.setImage(bean.getImage());
		
		
		
		session.save(book);
	}

	public List<Book> getBooks(){
		Session session = SessionUtil.getSession();
		Query<Book> query = session.createQuery("from Book");
		List<Book> books =query.list();
		session.close();
		return books;
	}

	public int deleteBook(int id) {
		Session session = SessionUtil.getSession();
		Transaction tx = session.beginTransaction();
		String hql = "delete from Book where id = :id";
		Query<Book> query = session.createQuery(hql);
		query.setInteger("id",id);
		int rowCount = query.executeUpdate();
		System.out.println("Rows affected: " + rowCount);
		tx.commit();
		session.close();
		return rowCount;
	}

	public int updateBook(int id, Book bk){
		if(id <=0) return 0;
		Session session = SessionUtil.getSession();
		Transaction tx = session.beginTransaction();
		String hql = "update Book set name = :name, age=:age where id = :id";
		Query<Book> query = session.createQuery(hql);
		query.setInteger("id",id);
		query.setString("book_name",bk.getBook_name());
		query.setString("isbn", bk.getIsbn());
		query.setString("Author", bk.getAuthor());
		query.setString("publisher",bk.getPublisher());
		query.setString("category",bk.getCategory());
		query.setInteger("quantity",bk.getQuantity());
		query.setInteger("price",bk.getPrice());
		query.setString("image", bk.getImage());
		
		
		
		
		int rowCount = query.executeUpdate();
		System.out.println("Rows affected: " + rowCount);
		tx.commit();
		session.close();
		return rowCount;
	}

	
	


	public List<Book> searchBooks(Book bk) {
		//public List<Book> searchBooks(String publisher,String category) {
		
		Session session = SessionUtil.getSession();
		String hql = "from Book where category =:category and publisher = :publisher ";//and price >:minprice and price<:maxprice
		
		Query<Book> query = session.createQuery(hql);
	
		//query.setString("book_name",bk.getBook_name());
		//query.setString("isbn", bk.getIsbn());
		//query.setString("Author", bk.getAuthor());
		
		
		
		
		//query.setInteger("maxprice",bk.getMaxprice());
		//query.setInteger("maxprice",bk.getMinprice());
		
		
		
		query.setString("publisher",bk.getPublisher());
		query.setString("category",bk.getCategory());
		
		
	//query.setInteger("price",bk.getPrice());
	
		List<Book> books =query.list();
		
		
		session.close();
		return books;
		
	}
	
}
