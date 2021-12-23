package in.nsoft.live.repositories;

import java.io.Serializable;

import org.springframework.data.jpa.repository.JpaRepository;

import in.nsoft.live.model.Attendance;

public interface AttendanceRepo extends JpaRepository<Attendance, Serializable> {

}
