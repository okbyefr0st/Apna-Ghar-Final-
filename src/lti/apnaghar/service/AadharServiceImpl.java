package lti.apnaghar.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lti.apnaghar.entity.Aadhar;
import lti.apnaghar.repo.AadharRepo;

@Service
public class AadharServiceImpl implements AadharService {

	@Autowired
	public AadharRepo aadharRepo;

	@Override
	public Aadhar getAadharData(String aadhar) {
		return aadharRepo.getAadharData(aadhar);
	}

}
