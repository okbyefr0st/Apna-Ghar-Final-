package lti.apnaghar.repo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lti.apnaghar.entity.Aadhar;

@Repository
public class AadharRepoImpl implements AadharRepo {
	

	@Autowired //Dependency injection of session factory
	private SessionFactory factory;
	


	@Override
	public Aadhar getAadharData(String aadhar) {
		Session session = factory.openSession(); //new session for authentication
		long adhNo =  Long.parseLong(aadhar);
		Aadhar aadharDetails=(Aadhar)session.get(Aadhar.class, adhNo); // getting userId field to change password
		Aadhar a1 = new Aadhar();
		if(aadharDetails != null && (aadharDetails.getAadhar() == adhNo))
		{
			return aadharDetails;
		}
		else
			return null;
	}



}
