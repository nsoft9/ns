package in.nsoft.live.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import in.nsoft.live.model.ExpenditureTypes;

public interface ExpenditureValuesRepo extends JpaRepository<ExpenditureTypes,String> {

}
