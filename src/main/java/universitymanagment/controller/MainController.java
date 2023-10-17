package universitymanagment.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import universitymanagment.dao.RegisterDao;
import universitymanagment.model.Register;

@Controller
public class MainController {
	
	@Autowired
	private RegisterDao dao;

	@RequestMapping("/")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping("/register")
	public String registerForm(Model model)
	{
		model.addAttribute("title", "Register Form");
		return "register";
	}
	
	@RequestMapping("/login")
	public String loginForm(Model model)
	{
		model.addAttribute("title", "Login Form");
		return "login";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public RedirectView createRegister(@ModelAttribute Register register, @RequestParam("password") String pass, @RequestParam("conformPassword") String conPass, HttpSession s)
	{
		
		if (pass.equals(conPass)) {
			dao.createRegisters(register);
			s.setAttribute("succMsg", "Data save Successfully ");
		}else {
			s.setAttribute("failedMsg", "Password does not match");
		}
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("register");
		return redirectView;
	}
	
	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public String loginPage(@RequestParam("email") String em, @RequestParam("password") String pwd, HttpSession session, Model model)
	{
		model.addAttribute("title", "Admin Panel");
		
		Register loginUser = dao.loginUser(em, pwd);
		
		
		if (em.equals("admin@gmail.com") && pwd.equals("admin")) {
			return "adminPages/adminHome";
		}else if (loginUser != null) {
			return "userPages/userHome";
		}else {
			session.setAttribute("error", "Email & Password does not match");
			return "redirect:/login";
		}		
		
	}
	
}
