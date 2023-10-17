package universitymanagment.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import universitymanagment.dao.StudentDao;
import universitymanagment.model.AddStudent;

@Controller
public class StudentController {
	
	@Autowired
	private StudentDao dao;

	@RequestMapping("/add_student")
	public String addStudent(Model model)
	{
		model.addAttribute("title","Add Student");
		return "adminPages/add_student";
	}
	
	@RequestMapping("/CheckStudent")
	public String checkStudent(Model model)
	{
		model.addAttribute("title", "Student Detail");
	
		List<AddStudent> allStudentData = dao.getAllStudentData();
		model.addAttribute("studentdata", allStudentData);
		
		return "adminPages/student_detail";
	}
	
	@RequestMapping(value = "/add-student", method = RequestMethod.POST)
	public String addDataStudent(@ModelAttribute AddStudent addStudent, HttpSession s)
	{
		dao.createStudent(addStudent);
		
		s.setAttribute("addMsg", "Student Add Successfully");
		
		return "redirect:/add_student";
	}
	
	@RequestMapping("/deletestudent/{deleteId}")
	public String deleteStudentRecord(@PathVariable("deleteId") int deleteId, HttpSession s)
	{
		dao.deleteStudentData(deleteId);
		s.setAttribute("deltMsg", "Delete Successfully");
		
		return "redirect:/CheckStudent";
	}
	
	@RequestMapping("/updatestudent/{updateId}")
	public String updateStudent(@PathVariable("updateId") int updateId, Model model)
	{
		AddStudent data = this.dao.getSingleStudentData(updateId);
		model.addAttribute("update", data);
		
		return "adminPages/update_student";
	}
	
	@RequestMapping(value = "/update-student", method = RequestMethod.POST)
	public String updateDataTeacher(@ModelAttribute AddStudent addStudent, HttpSession s)
	{
		dao.updateStudentData(addStudent);
		s.setAttribute("sucMsg", "Update Student Data Successfully");
		
		return "adminPages/update_student";
	}
	
}
