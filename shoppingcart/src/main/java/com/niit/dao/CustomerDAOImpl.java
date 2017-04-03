package com.niit.dao;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void addCustomer(Customer customer) {
		
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.save(customer);
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Customer> validate(Customer customer) {
		     List<Customer> listCustomer = null;
			 System.out.println("inside DAO"+customer);
			try
			{
				Session session=sessionFactory.openSession();
					
				@SuppressWarnings("unused")
				Transaction trans=session.beginTransaction();
				
				
				Query<Customer> qry = session.createQuery("from Customer where username='"+customer.getUsername()+"' and password='"+customer.getPassword()+"'");
				
				 listCustomer = qry.getResultList();
				
				System.out.println(listCustomer.size());
			}
			
			catch(Exception ex)
			{
				System.out.println("Error="+ex);
			}
			return listCustomer;
		}

}
