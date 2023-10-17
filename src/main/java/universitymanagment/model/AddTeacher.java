package universitymanagment.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class AddTeacher {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String numb;
	private String dob;
	private String gender;
	private String cnic;
	private String status;
	private String course;
	private String address;
	private String country;
	private String city;
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
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public AddTeacher(int id, String name, String numb, String dob, String gender, String cnic, String status,
			String course, String address, String country, String city) {
		super();
		this.id = id;
		this.name = name;
		this.numb = numb;
		this.dob = dob;
		this.gender = gender;
		this.cnic = cnic;
		this.status = status;
		this.course = course;
		this.address = address;
		this.country = country;
		this.city = city;
	}
	public AddTeacher() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "AddTeacher [id=" + id + ", name=" + name + ", numb=" + numb + ", dob=" + dob + ", gender=" + gender
				+ ", cnic=" + cnic + ", status=" + status + ", course=" + course + ", address=" + address + ", country="
				+ country + ", city=" + city + "]";
	}
	
		
}
