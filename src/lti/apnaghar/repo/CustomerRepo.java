package lti.apnaghar.repo;

import lti.apnaghar.bean.ForgetBean;
import lti.apnaghar.bean.LoginBean;
import lti.apnaghar.bean.RegisterBean;
import lti.apnaghar.entity.Customer;

public interface CustomerRepo {
	Customer authenticate(LoginBean login);
	
	boolean validate(ForgetBean forget);
	
	boolean changePassword(LoginBean change);
	
	boolean persist(RegisterBean register);
}
