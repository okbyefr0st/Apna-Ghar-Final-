package lti.apnaghar.entity;

/**
 * author- Ragini and Nilesh
 * It's an entity to store Aadhar details
 */

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name = "Aadhar_Details")
public class Aadhar {

	@Id
	@Column(name = "Aadhar_no")
	private long aadhar;
	

	private String name;
	private String address;
	private String city;
	private String state;

	@Column(name="Pin_Code")
	private int pinCode;
	
	@Column(name="Date_Of_Birth")
	private Date dateOfBirth;
	
	@Column(name="Contact_No")
	private long contact;
	
	public long getAadhar() {
		return aadhar;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getCity() {
		return city;
	}

	public String getState() {
		return state;
	}

	public int getPinCode() {
		return pinCode;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public long getContact() {
		return contact;
	}

	
	public void setAadhar(long aadhar) {
		this.aadhar = aadhar;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setState(String state) {
		this.state = state;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public void setContact(long contact) {
		this.contact = contact;
	}
}
