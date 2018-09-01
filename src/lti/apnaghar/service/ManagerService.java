package lti.apnaghar.service;

import java.util.List;

import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Loan;


public interface ManagerService {
	List<Loan>  getLoanDetails();

	//String getapproval(String approval);

	List<Loan> getLoans(String status);

	boolean updateStatus(String action, String id);
}
