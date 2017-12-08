package com.control;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.dao.Dao;
import com.model.AdminLogin;
import com.model.CustAccount;
import com.model.CustomerAcccountDetails;
import com.model.EmpRegistration;
import com.model.SuperAdmin;
import com.model.TransactionView;
@org.springframework.stereotype.Controller


public class Controller {
	
	@Autowired Dao dao;
	@Autowired ModelAndView mav;
	@Autowired HttpSession sess;
	
	@RequestMapping("/")
	public ModelAndView indn() {
		return new ModelAndView("redirect:/index");
	}
	@RequestMapping("loginpage")
	public ModelAndView loginpage() {
		return new ModelAndView("loginpage");
	}
	
	@RequestMapping("admin")
	public ModelAndView admin() {
		return new ModelAndView("admin");
	}
	//Write Home page code here...............................
	@RequestMapping("/index")
	public ModelAndView ind() {
		ModelAndView mav=new ModelAndView("index");
			return mav;
	}

	
//--------------------------------------------------------------------------------
	//Write Home page code here...............................
			
	
	@RequestMapping("/sadm")
	public ModelAndView sadms()
	{
		mav.addObject("sadms", "y");
		mav.addObject("adms", "n");
		mav.addObject("logsts", "");
		mav.setViewName("loginpage");
		return mav;
	}
	
	@RequestMapping(value="/regsadm")
	public ModelAndView sadm(@ModelAttribute ("sa") SuperAdmin sa) {
		dao.savesa(sa);
		mav.setViewName("loginpage");
		mav.addObject("logsts", "registered successfully");
		return mav;
	}
	
	
	
	
	
	//admin login code here..........................
	@RequestMapping(value="/loginadmin")
	public ModelAndView lgsadm(@ModelAttribute ("al") AdminLogin al) {
		ModelAndView mav=new ModelAndView();
		System.out.println("Id....."+al.getAdminid());
		System.out.println("Id....."+al.getUsername());
		System.out.println("Id....."+al.getPassword());
		al=dao.adlogin(al);
		if(al.getAdminid()!=-1){
			sess.setAttribute("isLogged", "y");
			sess.setAttribute("lgusr", al);
			sess.setAttribute("lgusrtyp", "sadm");
			mav.setViewName("admin");
			System.out.println("Login Success");
			mav.addObject("logsts", "registered successfully");
			return mav;
		}else{
//			mav.setViewName("adminlogin");
			mav.addObject("sadms", "n");
			mav.addObject("adms", "y");
			mav.setViewName("loginpage");
			System.out.println("Login Failed");
			mav.addObject("errmsg", "login Failed");
			return mav;
		}
	}
	
	
	
	@RequestMapping(value="/lgsadm")
	public ModelAndView lgsadm(@ModelAttribute ("sa") SuperAdmin sa) {
		sa=dao.getSAlog(sa);
		if(sa.getSadmid()!=-1){
			sess.setAttribute("isLogged", "y");
			sess.setAttribute("lgusr", sa);
			sess.setAttribute("lgusrtyp", "sadm");
			mav.setViewName("sadmnhmpg");
			mav.addObject("logsts", "registered successfully");
			return mav;
		}else{
			mav.setViewName("loginpage");
			mav.addObject("errmsg", "login Failed");
			return mav;
		}
	}
	
	
	
	
	@RequestMapping("/sadmnhmpg")
	public ModelAndView sadmnhmpg()
	{
		mav.setViewName("sadmnhmpg");
		return mav;
	}
	
	@RequestMapping("/sadmlogout")
	public ModelAndView sadmlogout()
	{
		sess.setAttribute("isLogged", "n");
		sess.setAttribute("lgusrtyp", "n");
		sess.setAttribute("lgusr", "");
		sess.invalidate();
		mav.setViewName("redirect:/sadm");
		return mav;
	}
	
	@RequestMapping(value="addnbb")
	public ModelAndView addnbb()
	{
		mav.setViewName("nbb_rfrm");
		return mav;
	}
	
//------------------------------------------------------------------
	@RequestMapping("/adm")
	public ModelAndView adms()
	{
		mav.addObject("sadms", "n");
		mav.addObject("adms", "y");
		mav.setViewName("loginpage");
		return mav;
	}
	
	
	//Write Home page code here...............................
		@RequestMapping("/about")
		public ModelAndView inds() {
			ModelAndView mav=new ModelAndView("about");
				return mav;
		}

		@RequestMapping("/blog")
		public ModelAndView indsws() {
			ModelAndView mav=new ModelAndView("blog");
				return mav;
		}
		@RequestMapping("/contact")
		public ModelAndView indss() {
			ModelAndView mav=new ModelAndView("contact");
				return mav;
		}

			
		@RequestMapping("/payment")
		public ModelAndView insds() {
			ModelAndView mav=new ModelAndView("payment");
				return mav;
		}
		
		@RequestMapping("/services")
		public ModelAndView sdinds() {
			ModelAndView mav=new ModelAndView("services");
				return mav;
		}
		
		@RequestMapping("/team")
		public ModelAndView inxds() {
			ModelAndView mav=new ModelAndView("team");
				return mav;
		}
		
		
		@RequestMapping("/addemp")
		public ModelAndView addemp() {
			ModelAndView mav=new ModelAndView("AdminAddEmployee");
				return mav;
		}

		

		@RequestMapping("/empsavee")
		public ModelAndView empsave(@ModelAttribute EmpRegistration er) {
			System.out.println("Controller:-"+er.getName()+" "+er.getFatherName());
			System.out.println("Save emp controller called...");
			dao.saveemp(er);
			System.out.println("Employee saved successfully.....");
				return new ModelAndView("admin");
		}
		
		
		@RequestMapping("/EmpView")
		public ModelAndView empview() {
			ModelAndView mav=new ModelAndView();
			List<EmpRegistration> list=dao.getemplist();
			mav.addObject("list",list);
			mav.setViewName("EmpView");	
			return mav;
		}
		
		//Delete Employee Code here................
		@RequestMapping(value="/deleteemp/{empId}")
		public ModelAndView delete(@PathVariable("empId") int empId)
		{
			System.out.println("\nDelete called...\n" + empId);		
			dao.deleteemp(empId);
			System.out.println("Delete successfully.........");
			return new ModelAndView("redirect:/EmpView");
		}
		
		
		//Edit Employee  Code here..........
		@RequestMapping(value="/editemp/{empId}")
		public ModelAndView edituy(@PathVariable("empId") int empId) {
			EmpRegistration e = dao.getEmpById(empId);
			return new ModelAndView("EmpUpdate", "emp", e);
		}

		
		@RequestMapping(value="/empupdatesave")
		public ModelAndView editemployee(@ModelAttribute EmpRegistration e)
		{
			System.out.println("\nEdit update controller called......");
			System.out.println(e);
			dao.editEmp(e);
			System.out.println("Edit update sucessfully.......");
			return new ModelAndView("redirect:/EmpView");
		}
		//Customer code start here.....................
		
		
		@RequestMapping(value="/custcall")
		public ModelAndView custcall()
		{
			return new ModelAndView("CustomerSearch");
		}
		
		
		
		//Customer Search Code here..........
				@RequestMapping("/custsearch")
				public ModelAndView CustSearch(@ModelAttribute CustomerAcccountDetails c) {					
					dao.getCustByAccNum(c);
					System.out.println(c.getAccNo()+" "+c.getPancard());					
					return new ModelAndView("CustAccInfo");
				}

				
				
				
				/*@RequestMapping("/viewcusttransaction")
				public ModelAndView viewcusttransaction() {
					ModelAndView mav=new ModelAndView("ViewCustTransaction");
						return mav;
				}
				*/
				
				
				@RequestMapping("/complaints")
				public ModelAndView complaints() {
					ModelAndView mav=new ModelAndView("Complaints");
						return mav;
				}

				
				
				
				@RequestMapping("/custnotification")
				public ModelAndView custnotification() {
					ModelAndView mav=new ModelAndView("CustNotification");
						return mav;
				}
				
				
				@RequestMapping("/empnotification")
				public ModelAndView empnotification() {
					ModelAndView mav=new ModelAndView("EmpNotification");
						return mav;
				}
				
				
				@RequestMapping("/accapproval")
				public ModelAndView accapproval() {
					ModelAndView mav=new ModelAndView("AccountApproval");
						return mav;
				}
				
				
				
				
				//Transaction view code here.............................
				
				@RequestMapping("/viewcusttransaction")
				public ModelAndView viewcusttransa() {
					ModelAndView mav=new ModelAndView();
					List<TransactionView> list=dao.gettransactionlist();
					mav.addObject("list",list);
					mav.setViewName("ViewCustTransaction");	
					return mav;
				}

}




