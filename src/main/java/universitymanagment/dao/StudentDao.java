package universitymanagment.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import universitymanagment.model.AddStudent;

@Component
public class StudentDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create student data
	@Transactional
	public void createStudent(AddStudent add)
	{
		this.hibernateTemplate.save(add);
	}
	
	//get All Student Record
	public List<AddStudent> getAllStudentData()
	{
		List<AddStudent> loadAll = this.hibernateTemplate.loadAll(AddStudent.class);
		return loadAll;
	}
	
	//delete record
	@Transactional
	public void deleteStudentData(int sid)
	{
		AddStudent student = this.hibernateTemplate.load(AddStudent.class, sid);
		this.hibernateTemplate.delete(student);
	}
	
	//get single data
	public AddStudent getSingleStudentData(int sid)
	{
		return this.hibernateTemplate.get(AddStudent.class, sid);
	}
	
	//update student record
	@Transactional
	public void updateStudentData(AddStudent addStudent)
	{
		this.hibernateTemplate.update(addStudent);
	}
}
