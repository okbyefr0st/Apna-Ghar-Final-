package lti.apnaghar.entity;

import javax.persistence.CascadeType;

/**
 * author- Ragini and Nilesh
 * It's an entity to store customer details
 */

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Customer_Details")
public class Customer {
	@Id
	@Column(name = "Email_Id", length = 100)
	private String email;

	@Column(name = "Password", length = 100)
	private String password;

	@Column(name = "Answer", length = 100)
	private String answer;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "aadhar", unique = true) // unidirectional relationship with aadhar table
	private Aadhar aadhar;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "pan", unique = true) // unidirectional relationship with pan table
	private Pan pan;

	@OneToOne(mappedBy = "customer", cascade = { CascadeType.ALL }, fetch = FetchType.EAGER) 
																								
																								
	private Loan loan;

	@Column(name = "userType", length = 100)
	private String userType;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Aadhar getAadhar() {
		return aadhar;
	}

	public void setAadhar(Aadhar aadhar) {
		this.aadhar = aadhar;
	}

	public Pan getPan() {
		return pan;
	}

	public void setPan(Pan pan) {
		this.pan = pan;
	}

	public Loan getLoan() {
		return loan;
	}

	public void setLoan(Loan loan) {
		this.loan = loan;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

}
