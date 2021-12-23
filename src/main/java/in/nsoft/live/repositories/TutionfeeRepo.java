package in.nsoft.live.repositories;

import org.springframework.data.repository.CrudRepository;

import in.nsoft.live.model.TutionFee;

public interface TutionfeeRepo extends CrudRepository<TutionFee,String>{
	
	TutionFee findByStuclass(String stuclass);

}
