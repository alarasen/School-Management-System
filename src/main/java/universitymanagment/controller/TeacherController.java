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
import org.springframework.web.servlet.view.RedirectView;

import universitymanagment.dao.TeacherDao;
import universitymanagment.model.AddTeacher;

@Controller
public class TeacherController {

	@Autowired
	private TeacherDao dao;
	
	@RequestMapping("/back")
	public String teachere()
	{
		return "adminPages/adminHome";
	}
	
	
	@RequestMapping("/add_teacher")
	public String addTeacher(Model model)
	{
		model.addAttribute("title", "Add Teacher");
		
		return "adminPages/add_teacher";
	}
	
	@RequestMapping("/chechDetail")
	public String checkTeacher(Model model)
	{
		model.addAttribute("title", "Teacher Detail");
	
		List<AddTeacher> add = dao.getAllData();
		model.addAttribute("add1", add);
		
		return "adminPages/teacher_detail";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public RedirectView addDataTeacher(@ModelAttribute AddTeacher addTeacher, HttpSession s)
	{
		dao.createTeacher(addTeacher);
		s.setAttribute("addMsg", "Teacher Add Successfully");
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("add_teacher");
		return redirectView;
	}
	
	@RequestMapping("/delete/{deleteId}")
	public String deleteTeach(@PathVariable("deleteId") int deleteId, HttpSession s)
	{
		dao.deleteTeacher(deleteId);
		s.setAttribute("deltMsg", "Delete Successfully");
		
		return "redirect:/chechDetail";
	}
	
	@RequestMapping("/update/{id}")
	public String updateTeacher(@PathVariable("id") int id, Model model)
	{
		AddTeacher data = this.dao.getSingleData(id);
		model.addAttribute("update", data);
		
		return "adminPages/update_teacher";
	}
	
	@RequestMapping(value = "/updateData", method = RequestMethod.POST)
	public String updateDataTeacher(@ModelAttribute AddTeacher addTeacher, HttpSession s)
	{
		dao.updateTeacherData(addTeacher);
		s.setAttribute("sucMsg", "Update Teacher Data Successfully");
		
		return "adminPages/update_teacher";
	}
	
}
