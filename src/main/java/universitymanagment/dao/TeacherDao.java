package universitymanagment.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import universitymanagment.model.AddTeacher;

@Component
public class TeacherDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// create data
	@Transactional
	public void createTeacher(AddTeacher add) {
		this.hibernateTemplate.saveOrUpdate(add);
	}

	// get All Data
	public List<AddTeacher> getAllData() {
		List<AddTeacher> loadAll = this.hibernateTemplate.loadAll(AddTeacher.class);
		return loadAll;
	}

	// delete
	@Transactional
	public void deleteTeacher(int id) {
		AddTeacher load = this.hibernateTemplate.load(AddTeacher.class, id);
		this.hibernateTemplate.delete(load);
	}

	// get single data
	public AddTeacher getSingleData(int rid) {
		return this.hibernateTemplate.get(AddTeacher.class, rid);
	}

	// Update Data
	@Transactional
	public void updateTeacherData(AddTeacher addTeacher) {
		this.hibernateTemplate.update(addTeacher);
	}

}
