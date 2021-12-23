package in.nsoft.live.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import in.nsoft.live.model.Payment;

public interface PaymentRepo extends JpaRepository<Payment, Integer> {
	
	@Query(value="select * from stu_fee_202020_tbl where substr(trans_id,1,6) =?1 ORDER BY trans_id",nativeQuery=true)
	public List<Payment> findByTransdte(String curdte);
	
//	@Query(value="select * from stu_fee_202020_tbl where trans_dte =TO_DATE(?1,'YYYY-MM-DD') ORDER BY trans_id",nativeQuery=true)
	public List<Payment> findByTransdte(Date date);
	
	@Query(value="select * from stu_fee_202020_tbl where trans_dte between :frdate and :todate ORDER BY trans_id",nativeQuery=true)
	public List<Payment> findByTransdte(Date frdate,Date todate);
	
}
