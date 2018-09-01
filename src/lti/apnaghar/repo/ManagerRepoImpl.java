package lti.apnaghar.repo;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Loan;

@Repository
public class ManagerRepoImpl implements ManagerRepo {
	@Autowired
	private SessionFactory factory;
	
	@Override
	public List<Loan> getLoanDetails() {
		Session session = factory.openSession();
	
	
			try {
				String hql = "from Loan";	
				return session.createQuery(hql).list();
				
			} catch (HibernateException e) {
				e.printStackTrace();
				return null;
			}
		
		
	}


	@Override
	public List<Loan> getLoans(String status) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		Query query = session.createQuery("from Loan where loanStatus=:lst");
		query.setParameter("lst", status);
		List<Loan> loans = query.list();
		txn.commit();
		return loans;
	}

	@Override
	public boolean updateStatus(String action, String id) {
		System.out.println("Before Update: " + action + "\t" + id);
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			Loan loan = (Loan) session.get(Loan.class, Integer.parseInt(id));
			loan.setLoanStatus(action);
			session.update(loan);

			txn.commit();
			return true;
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}
}
