package lti.apnaghar.entity;

/**
 * author- Ragini and Nilesh
 * It's an entity to store Pan details
 */

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Pan_Details")
public class Pan {

	@Id
	@Column(name = "PAN_NO")
	private String pan;

	@Column(name = "CIBIL_SCORE")
	private int cibil;
	

	public String getPan() {
		return pan;
	}

	public int getCibil() {
		return cibil;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public void setCibil(int cibil) {
		this.cibil = cibil;
	}

}
