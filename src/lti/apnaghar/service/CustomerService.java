package lti.apnaghar.service;

import lti.apnaghar.bean.ForgetBean;
import lti.apnaghar.bean.LoginBean;
import lti.apnaghar.bean.RegisterBean;
import lti.apnaghar.entity.Customer;

public interface CustomerService {
	Customer authenticate(LoginBean login);
	
	boolean validate(ForgetBean forget);
	
	boolean changePassword(LoginBean change);
	
	boolean persist(RegisterBean register);
}
