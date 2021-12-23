package in.nsoft.live.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TUTIONFEE_TBL")
public class TutionFee {
	
	@Column(name="ACADEMIC_YEAR")
	private String acadyear;
	
	@Id
	@Column(name = "STU_CLASS")
	private String stuclass;
	
	@Column(name = "FEEAMOUNT")
	private int feeamount;

	public String getStuclass() {
		return stuclass;
	}

	public void setStuclass(String stuclass) {
		this.stuclass = stuclass;
	}

	public int getFeeamount() {
		return feeamount;
	}

	public void setFeeamount(int feeamount) {
		this.feeamount = feeamount;
	}

	public String getAcadyear() {
		return acadyear;
	}

	public void setAcadyear(String acadyear) {
		this.acadyear = acadyear;
	}
	
}
