package lti.apnaghar.ctrl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.Date;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.datetime.DateFormatter;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lti.apnaghar.bean.LoanBean;
import lti.apnaghar.entity.Aadhar;
import lti.apnaghar.entity.Customer;
import lti.apnaghar.entity.Loan;
import lti.apnaghar.entity.Pan;
import lti.apnaghar.service.CustomerService;
import lti.apnaghar.service.LoanService;

@Controller
public class LoanController {

	int d1;
	int d2;
	int age;
	double EMI;

	@Autowired
	private LoanService loanService;
	//private CustomerService service;

	@RequestMapping(value="status.go",method = RequestMethod.POST)
	public String status(@RequestParam("email") String email, Map model, HttpSession session) {
		Customer customer = loanService.getLoanStatus(email);
		session.setAttribute("Customer", customer);
		if(customer.getLoan() != null) {
		Loan loan = customer.getLoan();
		if(loan != null)
		{
		if (email != null) {
			session.setAttribute("Loan", loan);
			model.put("Loan", loan);
			return "profile2";
		} else {
			model.put("Invalid", "Loan Not Available");
			return "profilecust";
		}
		}
		else {
			model.put("Invalid", "You have not Applied for Loan! If you wish, Apply Now");
			return "loannotapplied";}
		}
		else {
			model.put("Invalid", "You have not Applied for Loan! If you wish, Apply Now");
			return "loannotapplied";}
	}

	@RequestMapping(value="panvalidate.go",method = RequestMethod.POST)
	public String validateCibil(@RequestParam("email") String email, Map model, HttpSession session) 																									
	{
		Customer customer = loanService.validateCibil(email);
		Loan loan = customer.getLoan();
		Pan pan = customer.getPan();
		
		Date birthdate = customer.getAadhar().getDateOfBirth();
		Date currentdate = new Date();

		DateFormat formatter = new SimpleDateFormat("yyyyMMdd");
		d1 = Integer.parseInt(formatter.format(birthdate));
		d2 = Integer.parseInt(formatter.format(currentdate));
		int Age = (d2 - d1) / 10000;
		
		
		if (loan != null) 
		{ 
			model.put("Invalid", "Loan already issued");
			return "reject";

		} 
		else if (pan.getCibil() < 600) 
		{
			model.put("LowCibil", "Low Cibil");
			return "reject";

		} 
		else 
		{
			//model.put("Loan", "Loan already issued");
			return "apply1";
			}
	}

	@RequestMapping(value="eligible.go",method = RequestMethod.POST)
	public String emiCalculate(LoanBean loan, Map model, HttpSession session) {

		double income = loan.getIncome();
		double loanAmount = loan.getLoanAmount();
		double tenure = loan.getTenure();
		double annualInterest = 8;

		double loanTenureMonths =  tenure * 12;
		double maxPaybleEMI = (0.4 * income) / 12;
		double maxLoanGrantable = Math.round(maxPaybleEMI * loanTenureMonths);
		double r = (annualInterest / 12) / 100;
		
		Customer customer = loanService.authenticate(loan.getEmail());
		Aadhar aadhar = customer.getAadhar();
		Date birthdate = aadhar.getDateOfBirth();
		
		Date currentdate = new Date();

		DateFormat formatter = new SimpleDateFormat("yyyyMMdd");
		d1 = Integer.parseInt(formatter.format(birthdate));
		d2 = Integer.parseInt(formatter.format(currentdate));
		int Age = (d2 - d1) / 10000;

		double numerator = (Math.pow((1 + r), loanTenureMonths));

		EMI = Math.round((loanAmount * r * numerator) / (numerator - 1)); // monthly EMI
		Double emi = new Double(EMI);
		
		Double loanamount = Double.valueOf(loanAmount);
		Double amountEMI = Double.valueOf(EMI);
		
		if (Age >= 21 && ((tenure + Age) <= 60)) 
		{
			if (maxLoanGrantable >= loanAmount) 
			{
				model.put("LoanAmount", loanamount);
				model.put("LoanEMI", amountEMI);
				return "apply30";

			} 
			else 
			{
				model.put("LessIncome", "Loan Rejected due to less income");
				return "reject";
			}

		} 
		else 
		{
			model.put("Age", "Loan Rejected due to age constraints");
			return "reject";
		}

	}
	
	@RequestMapping(value="preclosure.go",method = RequestMethod.POST)
	public String preclosure(@RequestParam("email") String email, Map model, HttpSession session) {
		
		double preclose =	loanService.getPreclosure(email);
		Double preclose1=Double.valueOf(Math.round(preclose));
		if(preclose!=0) {
			model.put("preclose1", preclose1);
			return  "profile3";
		}
		else {
			model.put("Invalid", "Not applied for loan");
		return "profilecust";
		}
	}
	
	@RequestMapping(value="apply1.go",method = RequestMethod.POST)
	public String registerUser(LoanBean loan, HttpSession session) {
		session.setAttribute("LOAN", loan);
		
		return "apply20";
	}
	
	@RequestMapping(value="calculate.go",method = RequestMethod.POST)
	public String calculate(LoanBean loan,Map model,HttpSession session) {
		System.out.println("Email in Loan Bean:" + loan.getEmail());
		Customer customer= loanService.authenticate(loan.getEmail());
		session.setAttribute("Customer", customer);
		
		double income = loan.getIncome();
		double tenure = loan.getTenure();
		double annualInterest = 8;

		double loanTenureMonths =  tenure * 12;
		double maxPaybleEMI = (0.4 * income) / 12;
		double maxLoanGrantable = Math.round(maxPaybleEMI * loanTenureMonths);
		double r = (annualInterest / 12) / 100;
		
		double numerator = (Math.pow((1 + r), loanTenureMonths));
		
	 	EMI = Math.round((maxLoanGrantable * r * numerator) / (numerator - 1)); // monthly EMI
		
	 	Double maxloan = Double.valueOf(maxLoanGrantable);
	 	Double emi = Double.valueOf(EMI);
		
		
		model.put("MaxLoan", maxloan);
		model.put("EMI", emi );
		return "apply21";
	}
	
	@RequestMapping(value="loandetails.go",method = RequestMethod.POST)
	public String saveLoanDetails(LoanBean loan,Map model,HttpSession session) {
		Customer customer = loanService.validateCustomer(loan);
		loanService.persist(loan, customer);
		return "uploaddocument";
	}
}
