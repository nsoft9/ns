package in.nsoft.live.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="STU_FEE_TBL")
public class Payment {
	
	@Column(name = "ACADEMIC_YEAR")
	private String academicyear;
	
	@Column(name = "BRANCH_NME")
	private String branchnme;
	
	@Id
	@Column(name="TRANS_ID")
	private int transid;
	
	@Column(name="STU_ID")
	private String stuid;
	
	@Column(name="STU_NME")
	private String stunme;
	
	@Column(name="STU_CLASS")
	private String stuclass;
	
	@Column(name="STU_SEC")
	private String stusec;
	
	@Column(name="TRANS_DTE")
	private Date transdte;
	
	@Column(name="FEE_TYPE")
	private String feetype;
	
	@Column(name="AMT_RCVD")
	private int amtrcvd;
	
	@Column(name="AMT_RCVD_FRM")
	private String amtrcvdfrom;
	
	@Column(name="PMT_PROC_BY")
	private String pmtprocby;
	
	@Column(name="MONTH")
	private String month;
	
	public String getAcademicyear() {
		return academicyear;
	}

	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}

	public String getBranchnme() {
		return branchnme;
	}

	public void setBranchnme(String branchnme) {
		this.branchnme = branchnme;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public int getTransid() {
		return transid;
	}

	public void setTransid(int transid) {
		this.transid = transid;
	}

	public String getStuid() {
		return stuid;
	}

	public void setStuid(String stuid) {
		this.stuid = stuid;
	}

	public String getStunme() {
		return stunme;
	}

	public void setStunme(String stunme) {
		this.stunme = stunme;
	}

	public String getStuclass() {
		return stuclass;
	}

	public void setStuclass(String stuclass) {
		this.stuclass = stuclass;
	}

	public String getStusec() {
		return stusec;
	}

	public void setStusec(String stusec) {
		this.stusec = stusec;
	}

	public Date getTransdte() {
		return transdte;
	}

	public void setTransdte(Date transdte) {
		this.transdte = transdte;
	}

	public String getFeetype() {
		return feetype;
	}

	public void setFeetype(String feetype) {
		this.feetype = feetype;
	}

	public int getAmtrcvd() {
		return amtrcvd;
	}

	public void setAmtrcvd(int amtrcvd) {
		this.amtrcvd = amtrcvd;
	}

	public String getAmtrcvdfrom() {
		return amtrcvdfrom;
	}

	public void setAmtrcvdfrom(String amtrcvdfrom) {
		this.amtrcvdfrom = amtrcvdfrom;
	}

	public String getPmtprocby() {
		return pmtprocby;
	}

	public void setPmtprocby(String pmtprocby) {
		this.pmtprocby = pmtprocby;
	}	
	
}
