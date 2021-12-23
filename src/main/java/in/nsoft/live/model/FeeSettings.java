package in.nsoft.live.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="fee_tbl")
@Entity
public class FeeSettings {

	@Id
	private long id;
	
	@Column(name = "FETCHFEEFROMDB")
	private String fetchfeefromdb;
	
	@Column(name = "HOSTELFEEENABLEFLAG")
	private String hostelfeeenableflag;
	
	@Column(name = "TUTIONFEETERMDIVFLAG")
	private String tutionfeetermdivflag;
	
	@Column(name = "BUSFEETERMDIVFLAG")
	private String busfeetermdivflag;
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
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
