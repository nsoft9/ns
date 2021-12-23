package in.nsoft.live.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import in.nsoft.live.model.Expenditure;

public interface ExpenditureRepo extends JpaRepository<Expenditure, Integer> {

}
