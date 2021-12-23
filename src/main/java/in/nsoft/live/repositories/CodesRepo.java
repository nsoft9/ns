package in.nsoft.live.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import in.nsoft.live.model.Codes;

public interface CodesRepo extends CrudRepository<Codes, String> {
	
	Codes findBySchoolcode(String schoolcode);
	
	@Query(value="update codes_tbl set defbranch =?1,defacadyear = ?2",nativeQuery=true)
	public int findBySchoolcode(String defbranch,String defacadyear);

}
