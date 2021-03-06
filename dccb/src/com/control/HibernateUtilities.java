package com.control;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.model.AdminLogin;
import com.model.BBranch;
import com.model.Branch_Scale;
import com.model.Country;
import com.model.CustAccount;
import com.model.CustomerAcccountDetails;
import com.model.Designation;
import com.model.EmpRegistration;
import com.model.State;
import com.model.SuperAdmin;
import com.model.TransactionView;

public class HibernateUtilities {

	private static ServiceRegistry serviceRegistry;
	private static SessionFactory sessionFactory;

	static {

		try {
			System.out.println("hiibernateUtilities");
			Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
			serviceRegistry = new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
			
			configuration.addAnnotatedClass(SuperAdmin.class);
			configuration.addAnnotatedClass(AdminLogin.class);
			configuration.addAnnotatedClass(EmpRegistration.class);
			configuration.addAnnotatedClass(Country.class);
			configuration.addAnnotatedClass(TransactionView.class);
			configuration.addAnnotatedClass(Designation.class);
			configuration.addAnnotatedClass(BBranch.class);
			configuration.addAnnotatedClass(Branch_Scale.class);
			configuration.addAnnotatedClass(State.class);
			configuration.addAnnotatedClass(CustomerAcccountDetails.class);
			
			sessionFactory = configuration.buildSessionFactory(serviceRegistry);
			System.out.println("session factory..");

		} catch (HibernateException e) {
			e.printStackTrace();
			System.out.println("Problem creating session factory: " + e);
		}
	}

	public static SessionFactory getsSessionFactory() {
		return sessionFactory;
	}
	
}