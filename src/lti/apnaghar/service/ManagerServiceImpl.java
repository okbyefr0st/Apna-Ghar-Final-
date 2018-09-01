package lti.apnaghar.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Loan;
import lti.apnaghar.repo.ManagerRepo;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	private ManagerRepo repository;
	
	@Override
	public List<Loan> getLoanDetails(){
		return repository.getLoanDetails();
	}


	@Override
	public List<Loan> getLoans(String status) {
		return repository.getLoans(status);
	}

	@Override
	public boolean updateStatus(String action, String id) {
		return repository.updateStatus(action, id);
	}
	
}
