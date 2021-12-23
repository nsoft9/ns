package in.nsoft.live.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="Branch_tbl")
@Entity
public class Branch {
	
	@Id
	@Column(name="Branch_nme")
	private String branch;

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	
}
