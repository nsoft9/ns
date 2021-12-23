package in.nsoft.live.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;


@Entity
@Table(name="stu_attend_tbl")
@IdClass(AttendanceKeys.class)
public class Attendance {
	
	@Id
	@Column(name = "attend_dte")
	private Date attenddte;
	
	@Id
	@Column(name="stu_id")
	private int stuid;
	
	@Column(name="stu_class")
	private String stuclass;
	
	@Column(name="stu_sec")
	private String stusec;
	
	@Column(name="stu_pre_flg")
	private String stupresentflag;
	
	public Date getAttenddte() {
		return attenddte;
	}
	public void setAttenddte(Date attenddte) {
		this.attenddte = attenddte;
	}
	public int getStuid() {
		return stuid;
	}
	public void setStuid(int stuid) {
		this.stuid = stuid;
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
	public String getStupresentflag() {
		return stupresentflag;
	}
	public void setStupresentflag(String stupresentflag) {
		this.stupresentflag = stupresentflag;
	}
	
	

}
