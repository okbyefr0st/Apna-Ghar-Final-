package lti.apnaghar.service;

import java.util.Date;

import lti.apnaghar.bean.LoanBean;
import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Loan;

public interface LoanService {

	Customer getLoanStatus(String email);

	Customer validateCibil(String email);

	Customer validateCustomer(LoanBean loan);

	boolean persist(LoanBean loan, Customer customer);
	
	double getPreclosure(String email);
	
	Customer authenticate(String email);
}
