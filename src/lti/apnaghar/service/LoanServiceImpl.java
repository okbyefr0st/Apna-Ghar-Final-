package lti.apnaghar.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.stereotype.Service;

import lti.apnaghar.bean.LoanBean;
import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Loan;
import lti.apnaghar.repo.LoanRepo;

@Service
public class LoanServiceImpl implements LoanService {

	
	
	@Autowired
	public LoanRepo loanRepo;

	@Override
	public Customer getLoanStatus(String email) {
		return loanRepo.getLoanStatus(email);
	}

	@Override
	public Customer validateCibil(String email) {
		return loanRepo.validateCibil(email);
	}

	@Override
	public Customer validateCustomer(LoanBean loan) {
		return loanRepo.validateCustomer(loan);}

	@Override
	public boolean persist(LoanBean loan, Customer customer) {
		return loanRepo.persist(loan, customer);
	}
	@Override
	public double getPreclosure(String email) {
		return loanRepo.getPreclosure(email);
	}

	@Override
	public Customer authenticate(String email) {
		
		return loanRepo.authenticate(email);
	}
		      
}
