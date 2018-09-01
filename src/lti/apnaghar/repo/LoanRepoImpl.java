package lti.apnaghar.repo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lti.apnaghar.bean.LoanBean;
import lti.apnaghar.entity.Aadhar;
import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Loan;
import lti.apnaghar.entity.Pan;

@Repository
public class LoanRepoImpl implements LoanRepo {

	@Autowired // Dependency injection of session factory
	private SessionFactory factory;

	@Override
	public Customer getLoanStatus(String email) {
		Session session = factory.openSession(); // new session for authentication

		Customer loanDetails = (Customer) session.get(Customer.class, email); // getting userId field to change password
		if (loanDetails != null && (loanDetails.getEmail().equals(email))) {
			return loanDetails;
		} else
			return null;
	}

	@Override
	public Customer validateCibil(String email) {
		Session session = factory.openSession();
		Customer customer = (Customer) session.get(Customer.class, email);

		if (customer != null && (customer.getEmail().equals(email))) {
			return customer;
		} else
			return null;

	}

	@Override
	public Customer validateCustomer(LoanBean loan) {
		Session session = factory.openSession();
		String e = loan.getEmail();
		Customer customerDetails = (Customer) session.get(Customer.class, e);

		if (customerDetails != null && (customerDetails.getEmail().equals(e))) {
			return customerDetails;
		} else
			return null;

	}

	@Override
	public boolean persist(LoanBean loan, Customer customer) {

		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		try {
			Loan l1 = new Loan();
			l1.setIncome(loan.getIncome());
			l1.setLoanAmount(loan.getLoanAmount());
			l1.setTenure(loan.getTenure());
			l1.setOccupation(loan.getOccupation());
			l1.setPropertyName(loan.getPropertyName());
			l1.setPropertyValue(loan.getPropertyValue());

			Pan pan1 = customer.getPan();
			
			l1.setCustomer(customer);
			l1.setPan(pan1);
			l1.setAadhar(customer.getAadhar().getAadhar());
			
			customer.setLoan(l1);
			
			session.save(l1);
			session.update(customer);
			txn.commit();
			
			return true;
		} catch (Exception e) {
			txn.rollback();
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public double getPreclosure(String email) {
		Session session = factory.openSession();
		Customer preclosureDetails = (Customer) session.get(Customer.class, email);

		if (preclosureDetails != null && (preclosureDetails.getEmail().equals(email)) && (preclosureDetails.getLoan() != null)) {

			Loan loan = preclosureDetails.getLoan();
			
			double EMI = (loan.getLoanAmount() * (0.0066) * (Math.pow((1 + 0.0066), (loan.getTenure() * 12))))
					/ (Math.pow((1 + 0.0066), (loan.getTenure() * 12)) - 1); // monthly EMI

			System.out.println(EMI);

			double totalAmount = EMI * (loan.getTenure() * 12); // total payable
			double totalInterest = totalAmount - loan.getLoanAmount();
			double interestPerMonth = (totalInterest) / (loan.getTenure() * 12); // pm interest
			double fulfilledMonths = loan.getAmountPaid() / EMI; // kitna mahina bhara h loan
			double principalPaid = loan.getAmountPaid() - (interestPerMonth * fulfilledMonths);
			double preclosureValue = loan.getLoanAmount() - principalPaid;
			return preclosureValue;
		} else {
			return 0;
		}

	}

	@Override
	public Customer authenticate(String email) {
		Session session = factory.openSession(); // new session for authentication
		Customer customer = (Customer) session.get(Customer.class, email); // casting session object into
																						// User with userId field
		if (customer != null && customer.getEmail().equals(email)) // checking if user object is not
																					// null and then validating the
																					// password
			return customer;

		else
			return null;
	}

}
