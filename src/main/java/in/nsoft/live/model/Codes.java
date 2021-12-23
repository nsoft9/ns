package in.nsoft.live.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="codes_tbl")
public class Codes {
	
	@Id
	@Column(name = "SCHOOLCODE")
	private String schoolcode;
	
	@Column(name = "FETCHFEEFROMDB")
	private String fetchfeefromdb;
	
	@Column(name = "HOSTELFEEENABLEFLAG")
	private String hostelfeeenableflag;
	
	@Column(name = "TUTIONFEETERMDIVFLAG")
	private String tutionfeetermdivflag;
	
	@Column(name = "BUSFEETERMDIVFLAG")
	private String busfeetermdivflag;
	
	@Column(name= "DEFBRANCH")
	private String defbranch;
	
	@Column(name="DEFACADYEAR")
	private String defacadyear;
	
	public String getDefbranch() {
		return defbranch;
	}

	public void setDefbranch(String defbranch) {
		this.defbranch = defbranch;
	}

	public String getDefacadyear() {
		return defacadyear;
	}

	public void setDefacadyear(String defacadyear) {
		this.defacadyear = defacadyear;
	}

	public String getSchoolcode() {
		return schoolcode;
	}

	public void setSchoolcode(String schoolcode) {
		this.schoolcode = schoolcode;
	}

	public String getFetchfeefromdb() {
		return fetchfeefromdb;
	}

	public void setFetchfeefromdb(String fetchfeefromdb) {
		this.fetchfeefromdb = fetchfeefromdb;
	}

	public String getHostelfeeenableflag() {
		return hostelfeeenableflag;
	}

	public void setHostelfeeenableflag(String hostelfeeenableflag) {
		this.hostelfeeenableflag = hostelfeeenableflag;
	}

	public String getTutionfeetermdivflag() {
		return tutionfeetermdivflag;
	}

	public void setTutionfeetermdivflag(String tutionfeetermdivflag) {
		this.tutionfeetermdivflag = tutionfeetermdivflag;
	}

	public String getBusfeetermdivflag() {
		return busfeetermdivflag;
	}

	public void setBusfeetermdivflag(String busfeetermdivflag) {
		this.busfeetermdivflag = busfeetermdivflag;
	}
	
	
	

}
