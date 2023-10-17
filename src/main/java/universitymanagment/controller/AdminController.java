package universitymanagment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	@RequestMapping("/adminHome")
	public String admin()
	{
		return "adminPages/adminHome";
	}
	
	@RequestMapping("/teacher_panel")
	public String teacher()
	{
		return "adminPages/teacher_panel";
	}
	
	@RequestMapping("/student_panel")
	public String studentPanel()
	{
		return "adminPages/student_panel";
	}
	
	@RequestMapping("/attendance_panel")
	public String attendancePanel()
	{
		return "adminPages/attendance_panel";
	}
	
}
