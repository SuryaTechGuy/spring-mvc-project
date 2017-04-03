package com.niit.dao;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.niit.model.Product;  
  
@SuppressWarnings("deprecation")
@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	SessionFactory sessionFactory;

@Override
public void addProduct(Product product) {
		
		try
		{
			Session session=sessionFactory.openSession();
			Transaction trans=session.beginTransaction();
			session.saveOrUpdate(product);
			trans.commit();
			session.flush();
			session.close();
		}
		
		catch(Exception ex)
		{
			System.out.println("Error="+ex);
		}
	}

@SuppressWarnings("rawtypes")
@Transactional
public List<Product> plist() {
	Session session=sessionFactory.openSession();
	Query query = session.createQuery("from Product");
	@SuppressWarnings("unchecked")
	List <Product> plist=(List<Product>)query.list();
	System.out.println("List Product DAO Passed");
	session.close();
	return plist;
}

@Override
public boolean deleteProduct(String id) {
	Session session = sessionFactory.openSession();
	session.beginTransaction();	
	System.out.println("Delete Product DAO Passed");
	Product product = new Product();
	product.setId(id);
	session.delete(product);
	session.getTransaction().commit();
	session.close();
	return true;
}

@SuppressWarnings({ "unchecked", "rawtypes" })
@Override
public Product getProductById(String id) {
	Session session=sessionFactory.openSession();
	System.out.println("GetProductById DAO Passed");
	String hql="from Product where id=" + "'"+ id +"'";
	Query query=session.createQuery(hql);
	List<Product> plist= (List<Product>)query.list();	
	
	return plist.get(0);
}

@SuppressWarnings({ "unchecked" })
public List<Product> getProductListbycategory(String categoryId) {
	System.out.println("inside get product list by category ");
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	Criteria cr = session.createCriteria(Product.class);
	cr.add(Restrictions.like("categoryId", categoryId));
	List<Product> list = cr.list();
    System.out.println("end pf product list by category");
	return list;

}

@SuppressWarnings({ "unchecked" })
public List<Product> getProductListbytag(String tag) {
	System.out.println("inside getproductListbycategory in ProductDAOImpl");
	Session session = sessionFactory.openSession();
	session.beginTransaction();
	Criteria cr = session.createCriteria(Product.class);  //The Criteria API provides the org.hibernate.criterion.Projections class which can be used to get average, maximum or minimum of the property values. 
	//cr.add(Restrictions.like("tags1",tag)).add(Restrictions.like("tags2", tag));
	//Restrictions provide certain conditions for query
	Criterion tags1=Restrictions.like("tags1",tag);
	Criterion tags2=Restrictions.like("tags2",tag);
	Criterion tags3=Restrictions.like("tags3",tag);
	Criterion tags4=Restrictions.like("tags4",tag);
	Criterion tags5=Restrictions.like("tags5",tag);
	
	Disjunction orExp = Restrictions.or(tags1, tags2,tags3,tags4,tags5);
	cr.add(orExp);
	List<Product> list = cr.list();
	System.out.println("leaving addproduct in ProductDAOImpl");
return list;
}


}
