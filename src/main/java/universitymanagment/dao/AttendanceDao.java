package universitymanagment.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import universitymanagment.model.AddAttendance;

@Component
public class AttendanceDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create Attendance Data
	@Transactional
	public void createAttendance(AddAttendance attendance)
	{
		this.hibernateTemplate.save(attendance);
	}
	
	//get All Attendance
	public List<AddAttendance> getAllAttendance()
	{
		List<AddAttendance> all = this.hibernateTemplate.loadAll(AddAttendance.class);
		return all;
	}
	
	
}
