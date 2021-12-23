package in.nsoft.live.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import in.nsoft.live.model.Codes;
import in.nsoft.live.model.User;

public interface ServiceRepo extends CrudRepository<User, Long> {

	@Query(value="select * from USER_TBL where username=?1 ",nativeQuery=true)
	public User findByuserNme(String userNme);
	
	
	User findByUsername(String username);
	
}
