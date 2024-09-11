package org.techhub.ProjectApp.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.techhub.ProjectApp.model.AddNotice;
import org.techhub.ProjectApp.model.Register;
import org.techhub.ProjectApp.service.RegisterService;

@Controller
public class AddNoticeController {

	@Autowired
	RegisterService regService;

	@RequestMapping(value = "/addnote")
	public String addNotice(AddNotice notice, Map map, Principal principal) {
		return "AddNotices";
	}

	@RequestMapping(value = "/afteraddnote")
	public String isAddNotice(@RequestParam("organizeFor") String organizeFor,
			AddNotice notice, Map map, Register register) {		
			notice.setOrganizeFor(organizeFor);
			boolean add = regService.isAddNotice(notice);
            map.put("msg2", add ? "Notice Added Successfully" : "Notice Not Added");    
		  return "AddNotices";
	}

	@RequestMapping("/viewnote")
	public String ViewAllNotices(Model map, Map<String, List<AddNotice>> m) {
		List<AddNotice> list = regService.getAllNotices();

		m.put("list", list);
		return "viewnotices";

	}
	
	@RequestMapping("/userviewnote")
	public String userviewnote(HttpServletRequest request,Model map, Map<String, List<AddNotice>> m,Register register) {
		
		HttpSession session=request.getSession(false);
	 
		String role = (String) session.getAttribute("role");
		System.out.println(role);
		List<AddNotice> list=null;
		if( session.getAttribute("role")!=null)
			list = regService.getAllNoticesRoleWise(role);
		else {
			System.out.println("role is empty...........");
		}
		
		m.put("list", list);
		return "userviewnotices";

	}
	
	@RequestMapping("/delnotebyid")
	public String DeleteNoticeById(@RequestParam("nid") Integer nid, Map<String, List<AddNotice>> map) {
		boolean b = regService.DeleteEmployeeByid(nid);
		if (b) {
			List<AddNotice> list = regService.getAllNotices();
			map.put("list", list);
		}
		return "viewnotices";
	}

	@RequestMapping("/updnotebyid")
	public String getUpdatePage(@RequestParam("nid") Integer id, Map<String, List<AddNotice>> m) {
		
		List<AddNotice> list = regService.getDataById(id);
		m.put("list", list);
		return "updatenotice";
	}

	@RequestMapping(value = "/updatenotice", method = RequestMethod.POST)
	public String updateNoticeByid(AddNotice notice, Map<String, Object> map) {
		regService.updateNoticeByid(notice);
		List<AddNotice> list = regService.getAllNotices();
		map.put("list", list);
		return "viewnotices";

	}

	@RequestMapping("/searchnote")
	public String SearchNotice(Model map, Map m) {
		List<AddNotice> list = regService.getAllNotices();
           if(list!=null) {
		   map.addAttribute("list", list);
		   return "searchnotice";
           }else {
        	   m.put("message", "data Not Found...");
           }
           return "searchnotice";
	}
	
	 @RequestMapping("/adminLog")
	    public String AdminDash() {
			
	    	return "dashboard";
	    }
	 
	 @RequestMapping("/getusers")
	 public String getAllUsers(Map<String, List<Register>> m) {
		List<Register> list = regService.getAllUsers();
		
		m.put("list", list);
		
		return "viewusers";
	 }

}
