package in.nsoft.live.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import in.nsoft.live.model.SMS;

public interface SmsRepo extends JpaRepository<SMS, String> {
	
	SMS findByUserid(String userid);
}
