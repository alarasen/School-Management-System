package universitymanagment.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import universitymanagment.dao.AttendanceDao;
import universitymanagment.dao.StudentDao;
import universitymanagment.model.AddAttendance;
import universitymanagment.model.AddStudent;

@Controller
public class AttendanceController {

	@Autowired
	private StudentDao dao;
	
	@Autowired
	private AttendanceDao dao2;
	
	@RequestMapping("/add_Attendance")
	public String addAttendances(Model model)
	{
		model.addAttribute("title","Add Attendance");
		
		List<AddStudent> list = dao.getAllStudentData();
		model.addAttribute("data", list);
		
		return "adminPages/add_Attendance";
	}
	
	@RequestMapping(value = "/add-attendance", method = RequestMethod.POST)
	public String addAttendanceData(@ModelAttribute AddAttendance addAtten, HttpSession s)
	{
		dao2.createAttendance(addAtten);
		
		s.setAttribute("addMsg", "Attendance Add Successfully");
		
		return "redirect:/add_Attendance";
	}
	
}
