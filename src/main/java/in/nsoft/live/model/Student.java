package in.nsoft.live.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@Table(name="stu_mst_tbl")
@IdClass(CompositeKey.class)
public class Student {
	
	@Id
	@Column(name="ACADEMIC_YEAR")
	private String acadyear;
	
	@Column(name="BRANCH_NME")
	private String branchnme;
	
	@Id
	@Column(name = "STU_ID")
	private String stuId; 

	@Column(name = "STU_ADMISSION_NO")
	private int stuAdmno;
	
	@Column(name = "ROLL_NO")
	private int rollNo;
	
	@Column(name = "STU_NME")
	private String stuNme;
	
	@Column(name = "STU_ADHAR")
	private String stuAadhar;
	
	@Column(name = "STU_FTH_NME")
	private String stuFthnme;
	
	@Column(name = "STU_MTH_NME")
	private String stuMthnme;
	
	@Column(name = "STU_DOB")
	private Date stuDob;
	
	@Column(name = "STU_AGE")
	private int stuAge;
	
	@Column(name = "STU_CLASS")
	private String stuClass;
	
	@Column(name = "STU_SEC")
	private String stuSec;
	
	@Column(name = "STU_GENDER")
	private String stuGender;
	
	@Column(name = "STU_SYLL")
	private String stuAdmission;
	
	@Column(name = "STU_CONT1")
	private String stuCont1;
	
	@Column(name = "STU_CONT2")
	private String stuCont2;
	
	@Column(name = "STU_PLOTNO")
	private String stuPlotno;
	
	@Column(name = "STU_STREET")
	private String stuStreet;
	
	@Column(name = "STU_CITY")
	private String stuCity;
	
	@Column(name = "STU_STATE")
	private String stuState;
	
	@Column(name = "STU_PIN")
	private String stuPin;
	
	@Column(name = "VAN_SRVC_REQ")
	private String stuBussrvcreq;
	
	@Column(name = "VAN_SRVC_RUT")
	private String stuBussrvcroute;
	
	@Column(name = "ACT_STU_TUT_FEE")
	private int stuTutfee;
	
	@Column(name = "TOT_TUT_FEE_PAID")
	private int totTutfeepaid;
	
	@Column(name = "BAL_TUT_FEE")
	private int balTutfee;
	
	@Column(name = "ACT_BUS_FEE")
    private int stuBusfee;
	
	@Column(name = "TOT_BUS_FEE_PAID")
    private int stuBusfeepaid;
	
	@Column(name = "BAL_BUS_FEE")
    private int stuBusfeebal;
	
	@Column(name = "PREV_ACAD_FEE_BAL")
	private int prevAcadfeebal;
	
	@Column(name = "STU_ADM_DTE")
	private Date stuAdmdte;
	
	@Column(name = "STU_ADM_FEE" )
	private int stuadmfee;
	
	@Column (name = "TOT_PAID_ADM_FEE")
	private int paidadmfee;
	
	@Column (name = "BAL_ADM_FEE")
	private int baladmfee;
	
	@Column(name = "FTH_OCCUPATION")
	private String fthOccupation;
	
	@Column(name="CONC_AMT")
	private int concamt;
	
	@Column(name="CONC_DESC")
	private String concdesc;
	
	@Column(name="FEE_DEF_DESC")
	private String feedefdesc;
	
	@Column(name = "STU_CASTE")
	private String stuCaste;
	
	@Column(name = "STU_SUB_CASTE")
	private String stuSubcaste;
	
	@Column(name = "STU_ACTIVE_FLAG")
	private String stuActiveflag;

	public String getAcademicyear() {
		return acadyear;
	}

	public void setAcademicyear(String acadyear) {
		this.acadyear = acadyear;
	}

	public String getBranchnme() {
		return branchnme;
	}

	public void setBranchnme(String branchnme) {
		this.branchnme = branchnme;
	}

	public String getStuId() {
		return stuId;
	}

	public void setStuId(String stuId) {
		this.stuId = stuId;
	}

	public int getStuAdmno() {
		return stuAdmno;
	}

	public void setStuAdmno(int stuAdmno) {
		this.stuAdmno = stuAdmno;
	}

	public int getRollNo() {
		return rollNo;
	}

	public void setRollNo(int rollNo) {
		this.rollNo = rollNo;
	}

	public String getStuNme() {
		return stuNme;
	}

	public void setStuNme(String stuNme) {
		this.stuNme = stuNme;
	}

	public String getStuAadhar() {
		return stuAadhar;
	}

	public void setStuAadhar(String stuAadhar) {
		this.stuAadhar = stuAadhar;
	}

	public String getStuFthnme() {
		return stuFthnme;
	}

	public void setStuFthnme(String stuFthnme) {
		this.stuFthnme = stuFthnme;
	}

	public String getStuMthnme() {
		return stuMthnme;
	}

	public void setStuMthnme(String stuMthnme) {
		this.stuMthnme = stuMthnme;
	}

	public Date getStuDob() {
		return stuDob;
	}

	public void setStuDob(Date stuDob) {
		this.stuDob = stuDob;
	}

	public int getStuAge() {
		return stuAge;
	}

	public void setStuAge(int stuAge) {
		this.stuAge = stuAge;
	}

	public String getStuClass() {
		return stuClass;
	}

	public void setStuClass(String stuClass) {
		this.stuClass = stuClass;
	}

	public String getStuSec() {
		return stuSec;
	}

	public void setStuSec(String stuSec) {
		this.stuSec = stuSec;
	}

	public String getStuGender() {
		return stuGender;
	}

	public void setStuGender(String stuGender) {
		this.stuGender = stuGender;
	}

	public String getStuAdmission() {
		return stuAdmission;
	}

	public void setStuAdmission(String stuAdmission) {
		this.stuAdmission = stuAdmission;
	}

	public String getStuCont1() {
		return stuCont1;
	}

	public void setStuCont1(String stuCont1) {
		this.stuCont1 = stuCont1;
	}

	public String getStuCont2() {
		return stuCont2;
	}

	public void setStuCont2(String stuCont2) {
		this.stuCont2 = stuCont2;
	}

	public String getStuPlotno() {
		return stuPlotno;
	}

	public void setStuPlotno(String stuPlotno) {
		this.stuPlotno = stuPlotno;
	}

	public String getStuStreet() {
		return stuStreet;
	}

	public void setStuStreet(String stuStreet) {
		this.stuStreet = stuStreet;
	}

	public String getStuCity() {
		return stuCity;
	}

	public void setStuCity(String stuCity) {
		this.stuCity = stuCity;
	}

	public String getStuState() {
		return stuState;
	}

	public void setStuState(String stuState) {
		this.stuState = stuState;
	}

	public String getStuPin() {
		return stuPin;
	}

	public void setStuPin(String stuPin) {
		this.stuPin = stuPin;
	}

	public String getStuBussrvcreq() {
		return stuBussrvcreq;
	}

	public void setStuBussrvcreq(String stuBussrvcreq) {
		this.stuBussrvcreq = stuBussrvcreq;
	}

	public String getStuBussrvcroute() {
		return stuBussrvcroute;
	}

	public void setStuBussrvcroute(String stuBussrvcroute) {
		this.stuBussrvcroute = stuBussrvcroute;
	}

	public int getStuTutfee() {
		return stuTutfee;
	}

	public void setStuTutfee(int stuTutfee) {
		this.stuTutfee = stuTutfee;
	}

	public int getTotTutfeepaid() {
		return totTutfeepaid;
	}

	public void setTotTutfeepaid(int totTutfeepaid) {
		this.totTutfeepaid = totTutfeepaid;
	}

	public int getBalTutfee() {
		return balTutfee;
	}

	public void setBalTutfee(int balTutfee) {
		this.balTutfee = balTutfee;
	}

	public int getStuBusfee() {
		return stuBusfee;
	}

	public void setStuBusfee(int stuBusfee) {
		this.stuBusfee = stuBusfee;
	}

	public int getStuBusfeepaid() {
		return stuBusfeepaid;
	}

	public void setStuBusfeepaid(int stuBusfeepaid) {
		this.stuBusfeepaid = stuBusfeepaid;
	}

	public int getStuBusfeebal() {
		return stuBusfeebal;
	}

	public void setStuBusfeebal(int stuBusfeebal) {
		this.stuBusfeebal = stuBusfeebal;
	}

	public int getPrevAcadfeebal() {
		return prevAcadfeebal;
	}

	public void setPrevAcadfeebal(int prevAcadfeebal) {
		this.prevAcadfeebal = prevAcadfeebal;
	}

	public Date getStuAdmdte() {
		return stuAdmdte;
	}

	public void setStuAdmdte(Date stuAdmdte) {
		this.stuAdmdte = stuAdmdte;
	}

	public int getStuadmfee() {
		return stuadmfee;
	}

	public void setStuadmfee(int stuadmfee) {
		this.stuadmfee = stuadmfee;
	}

	public int getPaidadmfee() {
		return paidadmfee;
	}

	public void setPaidadmfee(int paidadmfee) {
		this.paidadmfee = paidadmfee;
	}

	public int getBaladmfee() {
		return baladmfee;
	}

	public void setBaladmfee(int baladmfee) {
		this.baladmfee = baladmfee;
	}

	public String getFthOccupation() {
		return fthOccupation;
	}

	public void setFthOccupation(String fthOccupation) {
		this.fthOccupation = fthOccupation;
	}

	public int getConcamt() {
		return concamt;
	}

	public void setConcamt(int concamt) {
		this.concamt = concamt;
	}

	public String getConcdesc() {
		return concdesc;
	}

	public void setConcdesc(String concdesc) {
		this.concdesc = concdesc;
	}

	public String getFeedefdesc() {
		return feedefdesc;
	}

	public void setFeedefdesc(String feedefdesc) {
		this.feedefdesc = feedefdesc;
	}

	public String getStuCaste() {
		return stuCaste;
	}

	public void setStuCaste(String stuCaste) {
		this.stuCaste = stuCaste;
	}

	public String getStuSubcaste() {
		return stuSubcaste;
	}

	public void setStuSubcaste(String stuSubcaste) {
		this.stuSubcaste = stuSubcaste;
	}

	public String getStuActiveflag() {
		return stuActiveflag;
	}

	public void setStuActiveflag(String stuActiveflag) {
		this.stuActiveflag = stuActiveflag;
	}
	

}
