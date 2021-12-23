package in.nsoft.live.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import in.nsoft.live.model.Student;

public interface StudentRepo extends JpaRepository<Student,Integer>{
	
	Student findByStuId(String i);
	
	@Query(value="select * from stu_mst_tbl where stu_class =?1 and stu_sec = ?2 ORDER BY stu_id",nativeQuery=true)
	public List<Student> findByStuClass(String stuclass,String stusec);
	
	@Query(value="select stu_id from stu_mst_tbl where academic_year =?1  ORDER BY stu_id DESC LIMIT 1",nativeQuery=true)
	public String findByStudentId(String acadyear);
	
}
