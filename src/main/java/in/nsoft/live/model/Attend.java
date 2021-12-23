package in.nsoft.live.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class Attend {
	
	private int studentId;
	private String studentName;
	private String stuClass;
	private String stuSec;
	private String presentFlag;
	
	public Attend() {
		super();
	}
	public Attend(int studentId, String studentName, String stuClass, String stuSec, String presentFlag) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.stuClass = stuClass;
		this.stuSec = stuSec;
		this.presentFlag = presentFlag;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
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
	public String getPresentFlag() {
		return presentFlag;
	}
	public void setPresentFlag(String presentFlag) {
		this.presentFlag = presentFlag;
	}

	
}
