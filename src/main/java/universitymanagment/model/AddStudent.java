package universitymanagment.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class AddStudent {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String fName;
	private String rollNo;
	private String numb;
	private String dob;
	private String address;
	private String age;
	private String email;
	private String gender;
	private String cnic;
	private String status;
	private String branch;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public String getNumb() {
		return numb;
	}
	public void setNumb(String numb) {
		this.numb = numb;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCnic() {
		return cnic;
	}
	public void setCnic(String cnic) {
		this.cnic = cnic;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	
	public AddStudent(int id, String name, String fName, String rollNo, String numb, String dob, String address,
			String age, String email, String gender, String cnic, String status, String branch) {
		super();
		this.id = id;
		this.name = name;
		this.fName = fName;
		this.rollNo = rollNo;
		this.numb = numb;
		this.dob = dob;
		this.address = address;
		this.age = age;
		this.email = email;
		this.gender = gender;
		this.cnic = cnic;
		this.status = status;
		this.branch = branch;
	}
	
	public AddStudent() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "AddStudent [id=" + id + ", name=" + name + ", fName=" + fName + ", rollNo=" + rollNo + ", numb=" + numb
				+ ", dob=" + dob + ", address=" + address + ", age=" + age + ", email=" + email + ", gender=" + gender
				+ ", cnic=" + cnic + ", status=" + status + ", branch=" + branch + "]";
	}
}
