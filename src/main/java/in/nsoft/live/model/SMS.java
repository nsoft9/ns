package in.nsoft.live.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SMS_TBL")
public class SMS {
	
	@Id
	@Column(name="USER_ID")
	private String userid;
	
	@Column(name="SENDER_ID")
	private String senderid;
	
	@Column(name="API_KEY")
	private String apikey;
	
	@Column(name="SMS_COUNT")
	private int smscount;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSenderid() {
		return senderid;
	}
	public void setSenderid(String senderid) {
		this.senderid = senderid;
	}
	public String getApikey() {
		return apikey;
	}
	public void setApikey(String apikey) {
		this.apikey = apikey;
	}
	public int getSmscount() {
		return smscount;
	}
	public void setSmscount(int smscount) {
		this.smscount = smscount;
	}
	
}
