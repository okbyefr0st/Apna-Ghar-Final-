package lti.apnaghar.repo;

import java.util.List;

import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Loan;

public interface ManagerRepo {

	public List<Loan> getLoanDetails();
	//public String getapproval(String approval);
	public List<Loan> getLoans(String status);
	public boolean updateStatus(String action, String id);
}
