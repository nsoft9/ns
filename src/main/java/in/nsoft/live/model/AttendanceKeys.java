package in.nsoft.live.model;

import java.io.Serializable;
import java.util.Date;

public class AttendanceKeys implements Serializable {
	
	private Date attenddte;
	
	private int stuid;
	
	public AttendanceKeys() {
		super();
	}

	public AttendanceKeys(Date attenddte, int stuid) {
		super();
		this.attenddte = attenddte;
		this.stuid = stuid;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + stuid;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AttendanceKeys other = (AttendanceKeys) obj;
		if (stuid != other.stuid)
			return false;
		return true;
	}
	
	

}
