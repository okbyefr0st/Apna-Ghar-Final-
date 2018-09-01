package lti.apnaghar.repo;

import org.hibernate.Query;

/**
 * author- Ragini and Nilesh
* It's a customer repository for validating login and registration */

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lti.apnaghar.bean.ForgetBean;
import lti.apnaghar.bean.LoginBean;
import lti.apnaghar.bean.RegisterBean;
import lti.apnaghar.entity.Aadhar;
import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Pan;

@Repository
public class CustomerRepoImpl implements CustomerRepo {

	@Autowired // Dependency injection of session factory
	private SessionFactory factory;

	@Override
	public Customer authenticate(LoginBean login) {
		Session session = factory.openSession(); // new session for authentication
		Customer customer = (Customer) session.get(Customer.class, login.getEmail()); // casting session object into
																						// User with userId field
		if (customer != null && customer.getPassword().equals(login.getPassword())) // checking if user object is not
																					// null and then validating the
																					// password
			return customer;

		else
			return null;

	}

	@Override
	public boolean validate(ForgetBean forget) {
		Session session = factory.openSession();
		Customer customer = (Customer) session.get(Customer.class, forget.getEmail()); // casting session object into
																						// User with UserId field
		if (customer != null && forget.getAnswer().equals(customer.getAnswer())) // validating entered email
			return true;

		else
			return false;
	}

	@Override
	public boolean changePassword(LoginBean change) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			Customer customer = (Customer) session.get(Customer.class, change.getEmail()); // getting userId field to
																							// change password
			customer.setPassword(change.getPassword()); // setting new password
			txn.commit(); // committing the changes made to table
			return true;
		} catch (Exception e) {
			txn.rollback(); // userId field if found to be invalid rollback the changes
			return false;
		}
	}

	
	@Override
	public boolean persist(RegisterBean register) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			Customer customer = new Customer();
			customer.setEmail(register.getEmail());
			customer.setPassword(register.getPassword());
			customer.setAnswer(register.getAnswer());
			
			

			Aadhar aadhar = (Aadhar) session.get(Aadhar.class, register.getAadhar()); // getting userId field to change																			// password
			Pan pan = (Pan) session.get(Pan.class, register.getPan());
			
			
			
			customer.setAadhar(aadhar);
			customer.setPan(pan);
			String x= register.setUserType("user");
			customer.setUserType(register.setUserType("user"));
			
			
			System.out.println(customer.getAadhar().getAadhar());
			System.out.println(customer.getPan().getPan());

			session.save(customer);
			txn.commit();
			return true;
			
		} catch (Exception e) {
			txn.rollback();
			e.printStackTrace();
			return false;
		}

	}

}
