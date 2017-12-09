package com.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.control.HibernateUtilities;
import com.model.AdminLogin;
import com.model.CustAccount;
import com.model.CustomerAcccountDetails;
import com.model.Designation;
import com.model.EmpRegistration;
import com.model.SuperAdmin;
import com.model.TransactionView;

public class Dao {
	SessionFactory sessionFactory=HibernateUtilities.getsSessionFactory();
	Session session;
	
	public Dao(Session session) {
		super();
		this.session = session;
	}
	public Session getSession() {
		return session;
	}
	public void setSession(Session session) {
		this.session = session;
	}
	public Dao() {
		super();
	}
	public void savesa(SuperAdmin sa) {
		session=sessionFactory.openSession();
		try{
			session.beginTransaction();
			session.save(sa);
			session.getTransaction().commit();
		}catch(Exception e)
		{
			System.out.println("Error: "+e.getStackTrace());
		}finally {
			session.close();
		}
		
	}
	
	public SuperAdmin getSAlog(SuperAdmin sa) {
		session=sessionFactory.openSession();
		SuperAdmin sa2=new SuperAdmin(-1);
		try{
			session.beginTransaction();
			sa2=(SuperAdmin)session.createQuery("from SuperAdmin where email=:e ").setParameter("e", sa.getEmail()).uniqueResult();
			System.out.println("sa2: "+sa2.getSadmid());
			if(sa.getPassword().equals(sa2.getPassword())){
				return sa2;
			}else{
				sa2.setSadmid(-1);
				return sa2;
			}
		}catch(Exception exc){
			System.out.println("Error: "+exc.getMessage());
			return new SuperAdmin(-1);
		}finally {
			session.close();
		}
	}
	
	
	
	//Admin dao code here..........................
	public AdminLogin adlogin(AdminLogin al) {
		System.out.println("Db called.....");
		session=sessionFactory.openSession();
		AdminLogin sa2=new AdminLogin(-1,"","");
		try{
			System.out.println("try called.....");
			session.beginTransaction();
			sa2=(AdminLogin)session.createQuery("from AdminLogin where username=:e").setParameter("e", al.getUsername()).uniqueResult();
			System.out.println("sa2: "+sa2.getAdminid());
			if(al.getPassword().equals(sa2.getPassword())){
				System.out.println("If db called");
				return sa2;
			}else{
				sa2.setAdminid(-1);
				System.out.println("else db called");
				return sa2;
			}
		}catch(Exception exc){
			System.out.println("catch Error: " + exc.getMessage());
			return new AdminLogin(-1,"","");
		}finally {
			session.close();
		}
	}
	
	
	public void saveemp(EmpRegistration er) {
			session=sessionFactory.openSession();
			session.beginTransaction();
			session.save(er);
			System.out.println("Dao called....");
			session.getTransaction().commit();
			session.close();
	}
	
	
	//View code here.......................
		@SuppressWarnings("unchecked")
		public List<EmpRegistration> getemplist()
		{
			session=sessionFactory.openSession();
			List<EmpRegistration> list=null;
			session.beginTransaction();
			list=session.createQuery("from EmpRegistration").list();
			System.out.print(list.size() + " employees...!");
			session.close();
			return list;
			}
	
		
		//delete Employee code here............
		public int deleteemp(int empId)
		{
			session =sessionFactory.openSession();
			session.beginTransaction();
			session.delete(new EmpRegistration(empId, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null));
			session.getTransaction().commit();
			session.close();
			return 0;
		}
		
		public EmpRegistration getEmpById(int empId) {
			session =sessionFactory.openSession();
			session.beginTransaction();
			EmpRegistration e = new EmpRegistration();
			e = (EmpRegistration) session.get(EmpRegistration.class, empId);
			System.out.println("GET EMP:= " + e);
			session.getTransaction().commit();
			session.close();
			return e;
		}
		
		public int editEmp(EmpRegistration e) {
			
			session =sessionFactory.openSession();
			session.beginTransaction();
			session.update(e);
			session.getTransaction().commit();
			session.close();
			return 0;
			}
		
		public CustomerAcccountDetails getCustByAccNum(CustomerAcccountDetails c) {
			try {
				session =sessionFactory.openSession();
				session.beginTransaction();
				String queryString = "from CustomerAcccountDetails where accNo = :accno";
				org.hibernate.Query query = this.session.createQuery(queryString);
//				query.setLong("accno", c.getAccNo());
				String no = String.valueOf(c.getAccNo());
				query.setParameter("accno", no);
				Object queryResult = query.uniqueResult();
				//session.getTransaction().commit();
				//session.close();				
				return ((CustomerAcccountDetails)queryResult);
			} catch (Exception e) {
				System.out.println("catch Error: " + e.getMessage());
				return new CustomerAcccountDetails();
			}finally {
				session.close();
			}
		}
		
		
		
		//Transaction View code here.......................
				@SuppressWarnings("unchecked")
				public List<TransactionView> gettransactionlist()
				{
					session=sessionFactory.openSession();
					List<TransactionView> list=null;
					session.beginTransaction();
					list=session.createQuery("from TransactionView").list();
					System.out.print(list.size() + " transactions...!");
					session.close();
					return list;
					}
				
				
				
				
				//designation code here.................
				public void savedesi(Designation desi) {
				
					session=sessionFactory.openSession();
					session.beginTransaction();
					session.save(desi);
					System.out.println("Dao called....");
					session.getTransaction().commit();
					session.close();
				}
				
				
				
				
				
				
				
				@SuppressWarnings("unchecked")
				public List<Designation> getdesilist()
				{
					session=sessionFactory.openSession();
					List<Designation> list=null;
					session.beginTransaction();
					list=session.createQuery("from Designation").list();
					System.out.print(list.size() + " designation...!");
					session.close();
					return list;
					}
		}
