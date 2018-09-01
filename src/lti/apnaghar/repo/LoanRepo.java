package lti.apnaghar.repo;

import lti.apnaghar.bean.LoanBean;
import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Loan;

public interface LoanRepo {
	public Customer getLoanStatus(String loan);
	
	public Customer validateCibil(String email);

	public Customer validateCustomer(LoanBean loan);

	public boolean persist(LoanBean loan, Customer customer);
	
	public double getPreclosure(String email);

	Customer authenticate(String email);

}
