package in.nsoft.live.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="EXPENDITURE_VALUES_TBL")
public class ExpenditureTypes {
	
	@Id
	@Column(name="EXPENDITURE_TYPE")
	private String expenditureType;

	public String getExpenditureType() {
		return expenditureType;
	}

	public void setExpenditureType(String expenditureType) {
		this.expenditureType = expenditureType;
	}
	
	

}
