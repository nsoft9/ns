package in.nsoft.live.model;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown = true)
public class AttendanceForm {
	
	private List<Attend> records;

	public List<Attend> getRecords() {
		return records;
	}

	public void setRecords(List<Attend> records) {
		this.records = records;
	}

	
}
