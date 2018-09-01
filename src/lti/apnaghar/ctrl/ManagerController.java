package lti.apnaghar.ctrl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Loan;
import lti.apnaghar.service.ManagerService;

@Controller
public class ManagerController {
	
	@Autowired
	private ManagerService service;
	
	@RequestMapping(value="getLoans.go",method = RequestMethod.GET)
	public String getLoans(@RequestParam("status") String status, Map model, HttpSession session) {
		List<Loan> loans = service.getLoans(status);
		model.put("Loans", loans);
		return status+"loans";
	}
	
	@RequestMapping(value="decision.go",method = RequestMethod.GET)
	public String approval(@RequestParam("action")String action, @RequestParam("id")String id, Map model, HttpSession session) {
		service.updateStatus(action, id);
		return "profileadmin";
	}
}
