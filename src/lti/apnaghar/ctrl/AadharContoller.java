package lti.apnaghar.ctrl;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lti.apnaghar.entity.Aadhar;
import lti.apnaghar.service.AadharService;

@Controller
public class AadharContoller {

	@Autowired
	private AadharService aadharService;

	@RequestMapping(value="details.go", method = RequestMethod.POST)
	public String execute(@RequestParam("aadhar") String aadhar, Map model, HttpSession session) {

		Aadhar adhr = aadharService.getAadharData(aadhar);
		if (adhr != null ) {
			
			session.setAttribute("Aadhar", adhr);
			return "register2";
		} else {
			model.put("Invalid", "Aadhar incorrect");
			return "register1";
		}
		

	}

}
