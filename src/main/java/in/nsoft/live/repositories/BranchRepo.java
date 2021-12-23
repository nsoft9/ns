package in.nsoft.live.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import in.nsoft.live.model.Branch;

public interface BranchRepo extends JpaRepository<Branch, String> {

}
