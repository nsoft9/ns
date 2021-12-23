package in.nsoft.live.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="EXPENDITURE_TBL")
public class Expenditure {
	
	@Id
	@Column(name="EXPENDITURE_ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int expenditureId;
	
	@Column(name="EXPENDITURE_TYPE")
	private String expenditureType;
	
	@Column(name="EXPENDITURE_SUBTYPE")
	private String expenditureSubtype;
	
	@Column(name="EXPENDITURE_DTE")
	private Date expenditureDate;
	
	@Column(name="EXPENDITURE_AMOUNT")
	private int expenditureAmount;
	
	@Column(name="EXPENDITURE_AMOUNT_HANDEDTO")
	private String expenditureamountHandedto;
	
	@Column(name="ACADEMIC_YEAR")
	private String academicYear;

	public int getExpenditureId() {
		return expenditureId;
	}

	public void setExpenditureId(int expenditureId) {
		this.expenditureId = expenditureId;
	}

	public String getExpenditureType() {
		return expenditureType;
	}

	public void setExpenditureType(String expenditureType) {
		this.expenditureType = expenditureType;
	}

	public String getExpenditureSubtype() {
		return expenditureSubtype;
	}

	public void setExpenditureSubtype(String expenditureSubtype) {
		this.expenditureSubtype = expenditureSubtype;
	}

	public Date getExpenditureDate() {
		return expenditureDate;
	}

	public void setExpenditureDate(Date expenditureDate) {
		this.expenditureDate = expenditureDate;
	}

	public int getExpenditureAmount() {
		return expenditureAmount;
	}

	public void setExpenditureAmount(int expenditureAmount) {
		this.expenditureAmount = expenditureAmount;
	}

	public String getExpenditureamountHandedto() {
		return expenditureamountHandedto;
	}

	public void setExpenditureamountHandedto(String expenditureamountHandedto) {
		this.expenditureamountHandedto = expenditureamountHandedto;
	}

	public String getAcademicYear() {
		return academicYear;
	}

	public void setAcademicYear(String academicYear) {
		this.academicYear = academicYear;
	}
	
	
	
}
