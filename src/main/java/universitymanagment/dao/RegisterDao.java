package universitymanagment.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import universitymanagment.model.Register;

@Component
public class RegisterDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create data
	@Transactional
	public void createRegisters(Register register)
	{
		this.hibernateTemplate.save(register);
	}
	
	public Register loginUser(String email, String password)
	{
		String sql = "from Register where email=:em and password=:pwd";
		
		Register rg = (Register)hibernateTemplate.execute(s->{
			
			Query q = s.createQuery(sql);
			q.setString("em", email);
			q.setString("pwd", password);
			return q.uniqueResult();
		});
		
		return rg;
		
	}
	
	//get All Data
	public List<Register> getAllData()
	{
		List<Register> loadAll = this.hibernateTemplate.loadAll(Register.class);
		return loadAll;
	}
	
	//get single data
	public Register getSingleData(int rid)
	{
		return this.hibernateTemplate.get(Register.class, rid);
	}
}
