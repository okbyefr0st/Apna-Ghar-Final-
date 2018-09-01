package lti.apnaghar.ctrl;

/**
 * author- Ragini and Nilesh
 * It's a customer controller to navigate customers to a specific location
 */

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lti.apnaghar.bean.AadharBean;
import lti.apnaghar.bean.ForgetBean;
import lti.apnaghar.bean.LoginBean;
import lti.apnaghar.bean.RegisterBean;
import lti.apnaghar.entity.Aadhar;
import lti.apnaghar.entity.Customer;
import lti.apnaghar.service.CustomerService;

@Controller // annotation for controller
public class CustomerController {

	@Autowired
	private CustomerService service;

	@RequestMapping(value = "login.go", method = RequestMethod.POST) // used to map web requests onto specific handler
																		// classes and/or handler
	// methods.
	public String checkLogin(LoginBean login, Map model, HttpSession session) {
		Customer customer = service.authenticate(login);
		if (customer != null) {
			session.setAttribute("Customer", customer);
			String email = customer.getEmail();
			String userType = customer.getUserType();

			if (userType.equals("manager")) {
				return "profileadmin";
			} else {
				return "profilecust";
			}
		} else {
			model.put("Invalid", "User id password incorrect");
			return "login";
		}
	}

	@RequestMapping(value = "forget.go", method = RequestMethod.POST)
	public String forgetPass(ForgetBean forget, Map model, HttpSession session) {
		if (service.validate(forget)) {
			session.setAttribute("Id", forget.getEmail());
			return "change";
		} else {
			model.put("Invalid", "User id and email incorrect");
			return "forget";
		}

	}

	@RequestMapping(value = "change.go", method = RequestMethod.POST)
	public String changePass(LoginBean change, Map model, HttpSession session) {
		change.setEmail((String) session.getAttribute("Id"));
		if (service.changePassword(change)) {
			model.put("Prompt", "Password changed succesfully");
			return "home";
		} else {
			model.put("Invalid", "Password does not match");
			return "change";
		}

	}

	@RequestMapping(value = "register2.go", method = RequestMethod.POST)
	public String registerUser() {
		return "register3";
	}

	@RequestMapping("register3.go")
	public String persist(RegisterBean register, Map model, HttpSession session) {
		if (service.persist(register)) {
			session.setAttribute("Customer", register);
			model.put("Prompt", "Thank you for registration");
			return "login"; // HOME karna

		} else {
			model.put("Invalid", "User already exist");
			return "register1";
		}
	}

	@RequestMapping(value = "logout.go")
	public String logout(Map model, HttpSession session) {
		session.invalidate();
		model.put("Prompt", "Logged Out Successfully");
		return "home";
	}

}
