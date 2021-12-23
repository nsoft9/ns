package in.nsoft.live.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="user_tbl")
@Entity
public class User {

	@Id
	private long id;
	
	@Column(name="USERNAME")
	private String username;
	
	@Column(name="PASSWORD")
	private String password;
	
	@Column(name="USERROLE")
	private String userrole;
	
	@Column(name = "SCHOOLCODE")
	private String schoolcode;
	
	@Column(name = "SCHOOLNAME")
	private String schoolname;
	
	@Column(name = "SCHOOLBRANCH")
	private String schoolbranch;
	
	@Column(name="ADMINACCESS")
	private String adminaccess;
	
	@Column(name="MOBILENO")
	private String mobileno;
	
	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserrole() {
		return userrole;
	}
	public void setUserrole(String userrole) {
		this.userrole = userrole;
	}
	public String getSchoolcode() {
		return schoolcode;
	}
	public void setSchoolcode(String schoolcode) {
		this.schoolcode = schoolcode;
	}
	public String getSchoolname() {
		return schoolname;
	}
	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
	}
	public String getSchoolbranch() {
		return schoolbranch;
	}
	public void setSchoolbranch(String schoolbranch) {
		this.schoolbranch = schoolbranch;
	}

	public String getAdminaccess() {
		return adminaccess;
	}

	public void setAdminaccess(String adminaccess) {
		this.adminaccess = adminaccess;
	}
			
}
