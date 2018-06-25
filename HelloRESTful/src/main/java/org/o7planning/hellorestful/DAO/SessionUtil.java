package org.o7planning.hellorestful.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class SessionUtil {

	private static SessionUtil instance=new SessionUtil();
	private SessionFactory sessionFactory;
	
	public static SessionUtil getInstance(){
		return instance;
	}
	
	private SessionUtil(){
		
		Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
		sessionFactory = configuration.buildSessionFactory();
		
	}
	
	public static Session getSession(){
		Session session =getInstance().sessionFactory.openSession();
		return session;
	}
}
