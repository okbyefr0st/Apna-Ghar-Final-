package lti.apnaghar.service;

/**
 * author- Ragini and Nilesh
 * It's a customer service for login and registration
 */

import java.util.Base64;
import java.util.Base64.Encoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lti.apnaghar.bean.ForgetBean;
import lti.apnaghar.bean.LoginBean;
import lti.apnaghar.bean.RegisterBean;
import lti.apnaghar.entity.Customer;
import lti.apnaghar.repo.CustomerRepo;


@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerRepo repository;
	
	@Override
	public Customer authenticate(LoginBean login) {
		Encoder encoder = Base64.getEncoder();
		String encoded = encoder.encodeToString(login.getPassword().getBytes()); //password encoding
		login.setPassword(encoded); //setting the password
		return repository.authenticate(login);
	}

	@Override
	public boolean validate(ForgetBean forget) {
		return repository.validate(forget);//Validating the user by passing the forget obj
	}

	@Override
	public boolean changePassword(LoginBean change) {
		Encoder encoder = Base64.getEncoder();//Encoding using base64
		change.setPassword(encoder.encodeToString(change.getPassword().getBytes()));//setting the new password
		return repository.changePassword(change);
	}


	@Override
	public boolean persist(RegisterBean register) {
		Encoder encoder = Base64.getEncoder();
		register.setPassword(encoder.encodeToString(register.getPassword().getBytes()));
		return repository.persist(register);
	}
	

}
