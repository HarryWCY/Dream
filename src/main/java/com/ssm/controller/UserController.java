package com.ssm.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.user.Address;
import com.ssm.entity.user.User;
import com.ssm.service.user.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/login")
	public String login() throws Exception {
		return "user/login";

	}
	@RequestMapping("/loginHandler")
	@ResponseBody
	public String loginHandler(String cookies,User user, HttpSession session,HttpServletResponse response) throws Exception {
		String judge = userService.login(user.getUserName(), user.getPassword());
		if(judge == "101"){
			Cookie cookie = null;
			// 说明登录成功,则判断是否需要30天免登陆
			if("0".equals(cookies)){
				cookie = new Cookie("userInfo", user.getUserName()+":"+user.getPassword());
				//设置时间
				cookie.setMaxAge(30*24*60*60);
			}else {
				cookie = new Cookie("userInfo", null);
				cookie.setMaxAge(0);
			}
			// 3.设置可以获取cookie的路径(此处/表示当前项目下任意位置)
			cookie.setPath("/");
			// 4.在响应中添加cookie信息
			response.addCookie(cookie);
			User user2 = userService.queryUserByUserName(user.getUserName());
			session.setAttribute("user", user2);
		}
		return judge;
	}
	
	@RequestMapping("/loginout")
	public String loginout(HttpSession session) throws Exception {
		session.setAttribute("user", null);
		return "user/login";
	}

	@RequestMapping("/register")
	public String register() {
		return "user/register";
	}

	@RequestMapping("/registerHandler")
	@ResponseBody
	public String registers(User user) {
		return userService.register(user);
	}
	
	@RequestMapping("/member")
	public String show() throws Exception {
		return "member/member";

	}
	
	@RequestMapping("/updatepassword")
	public String updatepassword()  throws Exception {
		return "member/updatepassword";
	}

	@RequestMapping("/updatepwdHandler")
	@ResponseBody
	public String updatepwd(HttpSession session, String password,HttpServletResponse response) throws Exception{
		User nuser = (User) session.getAttribute("user");
		nuser.setPassword(password);
		String judge = userService.updatepassword(nuser);
		if(judge == "101"){
			Cookie cookie = null;
			cookie = new Cookie("userInfo", null);
			cookie.setMaxAge(0);
			// 3.设置可以获取cookie的路径(此处/表示当前项目下任意位置)
			cookie.setPath("/");
			// 4.在响应中添加cookie信息
			response.addCookie(cookie);
			session.setAttribute("user", null);
		}
		return judge;
	}

	@RequestMapping("/address")
	public String address(Model model, HttpSession session) throws Exception {
		User user = (User) session.getAttribute("user");
		List<Address> address = userService.queryAddressByUser(user);
		model.addAttribute("address", address);
		return "member/address";
	}

	@RequestMapping("/addaddress")
	public String addaddress() throws Exception {
		return "member/addaddress";
	}

	@RequestMapping("/addaddressHandler")
	@ResponseBody
	public String addaddressHandler(HttpSession session, Address address) throws Exception {
		User user = (User) session.getAttribute("user");
		address.setUser(user);
		String judge;
		if(address.getId()==null){
			judge = userService.addAddress(address);
		}else {
			judge = userService.updateAddress(address);
		}
		return judge;

	}
	@RequestMapping("/deleteaddress")
	public String deleteaddress(Integer id) throws Exception {
		Address address = new Address();
		address.setId(id);
		userService.removeAddress(address);
		return "redirect:address";
	}

	@RequestMapping("updateaddress")
	public String updateaddress(Model model, Integer id) throws Exception {
		Address address = userService.queryAddressById(id);
		model.addAttribute("address", address);
		return "member/addaddress";

	}

	@RequestMapping("/defaultaddress")
	public String defaultaddress(HttpSession session,Integer id) throws Exception{
		User user = (User) session.getAttribute("user");
		Address address = new Address();
		address.setUser(user);
		address.setId(id);
		userService.updateDefault(address);
		return "redirect:address";
	}

	@RequestMapping("/order")
	public String orderAll() throws Exception {
		return "user/order";

	}
}
