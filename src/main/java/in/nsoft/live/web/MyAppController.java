package in.nsoft.live.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.nsoft.live.Securityservice.MyUserDetailsServie;
import in.nsoft.live.model.Attend;
import in.nsoft.live.model.Attendance;
import in.nsoft.live.model.AttendanceForm;
import in.nsoft.live.model.Codes;
import in.nsoft.live.model.Expenditure;
import in.nsoft.live.model.ExpenditureTypes;
import in.nsoft.live.model.Payment;
import in.nsoft.live.model.Route;
import in.nsoft.live.model.SMS;
import in.nsoft.live.model.Student;
import in.nsoft.live.model.TutionFee;
import in.nsoft.live.model.User;
import in.nsoft.live.repositories.AttendanceRepo;
import in.nsoft.live.repositories.BranchRepo;
import in.nsoft.live.repositories.CodesRepo;
import in.nsoft.live.repositories.ExpenditureValuesRepo;
import in.nsoft.live.repositories.PaymentRepo;
import in.nsoft.live.repositories.RouteRepo;
import in.nsoft.live.repositories.ServiceRepo;
import in.nsoft.live.repositories.StudentRepo;
import in.nsoft.live.repositories.TutionfeeRepo;
import in.nsoft.live.services.PaymentsCollectionService;
import in.nsoft.live.services.SMSService;
import in.nsoft.live.services.ServiceImpl;
import in.nsoft.live.validator.AttendanceValidator;
import in.nsoft.live.validator.PaymentValidator;
import in.nsoft.live.validator.RouteValidate;
import in.nsoft.live.validator.TutionfeeValidator;
import in.nsoft.live.validator.UserValidator;

@Controller
public class MyAppController {
	
	private static String Stuid;
	private static String feetype;
	private static String attenddate;
	private static String tmpStuid;
	private static String mybranch;
	public static String acadyear;
	private static String username;
	public static String schoolcode;
	public static String adminaccess;
	public static String academicyear;
	public static String studob;
	public static String editreplysuccessmessage;
	public static String editreplyfailmessage;
	@Autowired
	ServiceImpl serv;
	
	@Autowired
	BranchRepo branchrepo;
	
	@Autowired
	ServiceRepo usrrepo;
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	@Autowired
	StudentRepo sturepo;
	
	@Autowired
	RouteRepo repo;

	@Autowired
	TutionfeeRepo tutfeerepo;
	
	@Autowired
	UserValidator userValidator;
	
	@Autowired
	TutionfeeValidator tutfeeValidator;
	
	@Autowired
	AttendanceValidator attendvalidator;
	
	@Autowired
	AttendanceRepo attendrepo;
	
	@Autowired
	RouteValidate routevalidator;
	
	@Autowired
	PaymentValidator pmtvalidator;
	
	@Autowired
	PaymentsCollectionService paycolservice;
	
	@Autowired
	ExpenditureValuesRepo expendvalrepo;
	
	@Autowired
	CodesRepo codesrepo;
	
	@Autowired
	SMSService smssrvc;
	
	@Autowired
	PaymentRepo pmtrepo;
	
	@Autowired
	private ServletContext context;
	

	@RequestMapping("/")
	public ModelAndView home()
	{		
		ModelAndView mv = new ModelAndView();
		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		mv.setViewName("welcome.jsp");    
		return mv;
	}
	
	@RequestMapping("/login")
	public String login()
	{	
		return "login.jsp";
	}
	
	@RequestMapping("/logout")
	public String logout()
	{
		return "login.jsp";
	}
		
	@GetMapping("/addstudentview")
    public ModelAndView registration() {
   		ModelAndView mv = new ModelAndView();
		mv.addObject("myroutes",repo.findAll());
		mv.addObject("userForm",new Student());
		
		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
	
		mv.setViewName("test.jsp");
        
        return mv;
    }	
	
	@RequestMapping(value ="/addstudentview",method=RequestMethod.POST)
    public ModelAndView registration(@ModelAttribute("userForm") Student userForm, BindingResult bindingResult) {
		
		ModelAndView mv = new ModelAndView();
		
		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		
		try {		
			userValidator.validate(userForm, bindingResult);
			if (bindingResult.hasErrors()) {
	        	mv.addObject("myroutes",repo.findAll());
	        }
	        else 
	        {
	        	mv.addObject("myroutes",repo.findAll());  
	        	
	        	boolean status = serv.saveStudent(userForm);
	        	
	        	if ( status == true )
	        	{
	        		mv.addObject("successMessage", "Student inserted Successfully !");
	        	}
	        	else
	        	{
	        		mv.addObject("failureMessage","Student data not Inserted !");
	        	} 	
	        }
		}catch(Exception ex)
		{
			mv.addObject("failureMessage",ex);
		}
           
        mv.setViewName("test.jsp");

        return mv;
    }
	
	@GetMapping("/edit")
    public ModelAndView editRecord() {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("myvalues",sturepo.findAll());mv.addObject("myroutes",repo.findAll());
		mv.addObject("userForm",new Student());
		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);	

        mv.setViewName("edit.jsp"); 
        return mv;
    }
	
	
	@RequestMapping(value ="/edit",method=RequestMethod.POST)
    public ModelAndView edit(@ModelAttribute("editForm") Student stu) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("myvalues",sturepo.findAll());
        mv.addObject("myroutes",repo.findAll());
        if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
        if ( stu.getStuId() != null )
        {
        	Student list= sturepo.findByStuId(stu.getStuId());
        	mv.addObject("list",list);
        	
        	tmpStuid = list.getStuId();
        	SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
	    	if ( list.getStuDob() != null )
	    	{
	    		String strDate= formatter.format(list.getStuDob());
	    		mv.addObject("studob",strDate);
	    		studob=strDate;
	    	}
	    	
	    	if ( list.getStuAdmdte() != null )
	    	{
	    		String strDate= formatter.format(list.getStuAdmdte());
	    		mv.addObject("stuadmdte",strDate);
	    		academicyear = strDate;
	    	}	 		  	
        }
        else 
        {
            mv.addObject("failureMessage", "Student Data Not Found!");    	
        } 
        
        mv.setViewName("editprocess.jsp");
        return mv;
    }
	
	@RequestMapping(value ="/edit/{tmpStuid}",method=RequestMethod.POST)
    public ModelAndView studentupdate(@ModelAttribute("editForm") Student userForm) {
		
		ModelAndView mv = new ModelAndView();
		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		boolean status = serv.saveStudent(userForm,tmpStuid);
		if ( status == true )
    	{
    		editreplysuccessmessage = "Student data successfully modified";	
    	}
    	else
    	{
    		editreplyfailmessage = "Student data not updated !";    		
    	} 
		
		mv.setViewName("editprocess.jsp");
        
        return mv;
    }
	
	
	@GetMapping("/tutionfee")
    public ModelAndView tutionfee() {
   		ModelAndView mv = new ModelAndView();
        mv.setViewName("tutionfee.jsp");
        if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
        return mv;
    }
	
	@RequestMapping(value ="/tutionfee",method=RequestMethod.POST)
    public ModelAndView tutinfee(@ModelAttribute("tutionfeeForm") TutionFee tutionfee, BindingResult bindingResult) {
        tutfeeValidator.validate(tutionfee, bindingResult);

        ModelAndView mv = new ModelAndView();
        
        if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
        
        if (bindingResult.hasErrors()) {
        	mv.addObject("failureMessage", "Please contact Admin");
            mv.setViewName("tutionfee.jsp"); 
        }
        else 
        {   
        	tutfeerepo.save(tutionfee);
        	mv.addObject("successMessage", "Tutionfee inserted Successfully !");
        }
        
        mv.setViewName("tutionfee.jsp");

        return mv;
    }
	
	@GetMapping("/viewtutfee")
    public ModelAndView viewtutfee() {
   		ModelAndView mv = new ModelAndView();
   		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
   		mv.addObject("myfees",tutfeerepo.findAll());
        mv.setViewName("viewtutfee.jsp");
        
        return mv;
    }
	
	@GetMapping("/busfee")
    public ModelAndView busfee() {
   		ModelAndView mv = new ModelAndView();
   		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
        mv.setViewName("busfee.jsp");
        
        return mv;
    }
	
	@RequestMapping(value ="/busfee",method=RequestMethod.POST)
    public ModelAndView busfee(@ModelAttribute("busfeeForm") Route route, BindingResult bindingResult) {
        routevalidator.validate(route, bindingResult);

        ModelAndView mv = new ModelAndView();
        
        if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
        
        if (bindingResult.hasErrors()) {
        	mv.addObject("failureMessage", "Please contact Admin");
            mv.setViewName("busfee.jsp"); 
        }
        else 
        {
        	repo.save(route);
        	mv.addObject("successMessage", "Bus fee inserted Successfully !");
        }
        
        mv.setViewName("busfee.jsp");

        return mv;
    }
	
	@GetMapping("/viewbusfee")
    public ModelAndView viewbusfee() {
   		ModelAndView mv = new ModelAndView();
   		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
   		mv.addObject("mybusfees",repo.findAll());
        mv.setViewName("viewbusfee.jsp");
        
        return mv;
    }

	@GetMapping("/payments")
    public ModelAndView payments() {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("myvalues",sturepo.findAll());
        mv.setViewName("payment.jsp");  
        if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
        return mv;
    }
	
	@RequestMapping(value ="/payments",method=RequestMethod.POST)
    public ModelAndView payment(@ModelAttribute("paymentForm") Payment pmt, BindingResult bindingResult) {
       
        ModelAndView mv = new ModelAndView();
        
        if ( mybranch == null)
        {
        	getValues();
        }
        
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		
        if ( pmt.getStuid() !=  null )
        {
        	Stuid=pmt.getStuid();
        	feetype=pmt.getFeetype();
        	Student stu = sturepo.findByStuId(pmt.getStuid());
        	mv.addObject("myvalues",sturepo.findAll());
        	mv.addObject("successMessage", "Student Fetch Successfully !");
        	mv.addObject("stuId",stu.getStuId());
        	mv.addObject("stuNme",stu.getStuNme());
        	mv.addObject("stuClass",stu.getStuClass());
        	mv.addObject("stuSec",stu.getStuSec());
        	if(pmt.getFeetype().equals("Tution Fee"))
        	{
        		mv.addObject("balfee",stu.getBalTutfee());
        	}
        	else if ( pmt.getFeetype().equals("Bus Fee"))
        	{
        		mv.addObject("balfee",stu.getStuBusfeebal());
        	}

        }
        else 
        {
        	pmt.setStuid(Stuid);
        	
        	pmt.setFeetype(feetype);
        	
        	pmtvalidator.validate(pmt, bindingResult);
        	
        	if (bindingResult.hasErrors()) {
        		mv.addObject("successMessage","NOT NULL");
            	mv.addObject("failureMessage", "balance amount is less than entered amount please check!");
            }
        	else
        	{
        		mv.addObject("sucMessage", "payment process has been successfully completed ");
        		mv.addObject("srcfile",System.getProperty("user.home") + "\\Desktop\\Bonafide.pdf");
        	}        	
        }
        
        mv.setViewName("payment.jsp");
        return mv;
    }
	
	@RequestMapping(value="/printreceipt",method = RequestMethod.GET)
	public void viewPdf(HttpServletRequest request,HttpServletResponse response)
	{
		try {
	//		String fullpath = resourceLoader.getResource("classpath:nsoft.pdf").getURI().getPath();
			String fullpath = "/home/ubuntu/nsoft/receipt.pdf";
			Pdfview(fullpath,response,"receipt.pdf");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void Pdfview(String fullpath,HttpServletResponse response,String fileName)
	{
		File file = new File(fullpath);
		final int BUFFER_SIZE = 4096;
		if ( file.exists())
		{
			try {
				FileInputStream inputstream = new FileInputStream(file);
				String mimeType = context.getMimeType(fullpath);
				response.setContentType(mimeType);
				response.setHeader("Content-Disposition", "inline; filename="+fileName);
				OutputStream outputstream = response.getOutputStream();
				byte[] buffer = new byte[BUFFER_SIZE];
				int bytesRead = -1;
				while((bytesRead = inputstream.read(buffer)) != -1)
				{
					outputstream.write(buffer,0,bytesRead);
				}
				inputstream.close();
				outputstream.close();
			}catch (Exception ex)
			{
				ex.printStackTrace();
			}
		}
	}
	
	
	@GetMapping("/attendance")
    public ModelAndView attedance() {
   		ModelAndView mv = new ModelAndView();
   		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);        
        return mv;
    }
	
	@RequestMapping(value ="/attendance",method=RequestMethod.POST)
    public ModelAndView attendance(@ModelAttribute("userForm") Attendance atd, BindingResult bindingResult) {
       
		attendvalidator.validate(atd, bindingResult);
		
		ModelAndView mv = new ModelAndView();
		
		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		
		if (bindingResult.hasErrors()) {
			mv.addObject("failureMessage", "please select all the fields");
			mv.setViewName("attendance.jsp"); 
	    }              
	    else
	    {
	    	mv.addObject("successMessage", "Everyting went fine");
	    	mv.addObject("stulist",sturepo.findByStuClass(atd.getStuclass(), atd.getStusec()));
	    	SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
	    	String strDate= formatter.format(atd.getAttenddte());
	    	attenddate = strDate; 
	    	mv.addObject("attenddte",strDate);
	    	
	    }
	     
	    mv.setViewName("attendance.jsp");

        return mv;
    }
	
	@RequestMapping(value = "/attendanceprocess",method = RequestMethod.POST)
	public ModelAndView addPersons(@RequestBody AttendanceForm records) throws ParseException, IOException 
	{
		ModelAndView mv = new ModelAndView();
		
		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		
		try {
			List<Attend> contacts = records.getRecords();
			
			for( int i=0; i < contacts.size(); i++)
			{
				Attend atd = new Attend();
				atd = contacts.get(i);
				Attendance attend = new Attendance();
				
				Date date1=new SimpleDateFormat("MM/dd/yyyy").parse(attenddate);
		    	
		    	attend.setAttenddte(date1);
		    	attend.setStuclass(atd.getStuClass());
		    	attend.setStuid(atd.getStudentId());
		    	attend.setStusec(atd.getStuSec());
		    	attend.setStupresentflag(atd.getPresentFlag());
		    	
		    	attendrepo.save(attend);
		    	
			}

		 } catch (Exception ex) {

		 }
		
		mv.setViewName("attendance.jsp"); 
		
		return mv;
	}
	
	@GetMapping("/feecollections")
    public ModelAndView feecollections() {
   		ModelAndView mv = new ModelAndView();
   		if ( mybranch == null)
        {
        	getValues();
        }       
        mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
        mv.setViewName("feecollections.jsp");
        
        return mv;
    }
	
	@GetMapping("/todayreceipts")
    public ModelAndView feecollectionstoday() throws ParseException {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
   		mv.addObject("list",paycolservice.fetchRecords());
        mv.setViewName("today.jsp");
        return mv;
    }
	
	@GetMapping("/academicyear")
    public ModelAndView feecollectionsacademicyear() throws ParseException {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
        mv.setViewName("academicyear.jsp");
        mv.addObject("list",paycolservice.fetchacademicRecords());
        return mv;
    }
	
	@GetMapping("/betweendates")
    public ModelAndView feecollectionsbtwdates() {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
        mv.setViewName("betweendates.jsp");
       // mv.addObject("list",paycolservice.fetchacademicRecords());
        return mv;
    }
	
	@PostMapping("/betweendte")
	public ModelAndView btwdates(@RequestParam("frdte") String frdte,@RequestParam("todte") String todte) throws ParseException 
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",paycolservice.fetchacademicRecords(frdte,todte));
		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		mv.setViewName("betweendates.jsp");
		mv.addObject("successMessage","Everything went well");
		mv.addObject("frdte",frdte);
		mv.addObject("todte",todte);
		return mv;
	}
	
	@GetMapping("/smsgen")
    public ModelAndView sms() {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("myvalues",sturepo.findAll());
   		
   		if ( mybranch == null )
		{		    
		    String usr = MyUserDetailsServie.usr;
		    User user = usrrepo.findByUsername(usr);	    
		    username = user.getUsername();
		    adminaccess = user.getAdminaccess();
		    schoolcode = user.getSchoolcode();
		    
		    Codes code = codesrepo.findBySchoolcode(schoolcode);
		    acadyear = code.getDefacadyear();
		    mybranch = code.getDefbranch(); 
		    
		    mv.addObject("defbranch",mybranch);
	        mv.addObject("defacadyear",acadyear);
	        mv.addObject("username",username);
		}
		
		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);	
   		
   		SMS smsparam = smssrvc.fetchRecord(username);
   		mv.addObject("smscount",smssrvc.comma(smsparam.getSmscount()));
        mv.setViewName("sms.jsp");
        return mv;
    }
	
	@RequestMapping(value="/smsgen", method=RequestMethod.POST, params={"all", "!specificclasses","!staff","!onestudent"})
    public ModelAndView smsall(@RequestParam("template") String tmp,@RequestParam("message") String message) {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("myvalues",sturepo.findAll());
   		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);	
   		SMS smsparam = smssrvc.fetchRecord(username);
   		mv.addObject("smscount",smssrvc.comma(smsparam.getSmscount()));
        mv.setViewName("sms.jsp");
        return mv;
    }
	
	@RequestMapping(value="/smsgen", method=RequestMethod.POST, params={"staff", "!specificclasses","!all","!onestudent"})
    public ModelAndView smsstaff(@RequestParam("template") String tmp,@RequestParam("message") String message) {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("myvalues",sturepo.findAll());
   		SMS smsparam = smssrvc.fetchRecord(username);
   		mv.addObject("smscount",smssrvc.comma(smsparam.getSmscount()));
        mv.setViewName("sms.jsp");
        return mv;
    }
	
	@RequestMapping(value="/smsgen",method=RequestMethod.POST,params= {"specificclasses","!staff","!all","!onestudent"})
    public ModelAndView smsclasses(@RequestParam("template") String tmp,@RequestParam("message") String message,@RequestParam("frclass") String frclass,@RequestParam("toclass") String toclass) {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("myvalues",sturepo.findAll());
   		SMS smsparam = smssrvc.fetchRecord(username);
   		mv.addObject("smscount",smssrvc.comma(smsparam.getSmscount()));
        mv.setViewName("sms.jsp");
        return mv;
    }
	
	@RequestMapping(value="/smsgen",method=RequestMethod.POST,params= {"onestudent","!staff","!all","!specificclasses"})
    public ModelAndView smsstudent(@RequestParam("template") String tmp,@RequestParam("message") String message,@RequestParam("stuid") String Studentid) {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("myvalues",sturepo.findAll());
   		SMS smsparam = smssrvc.fetchRecord(username);
   		mv.addObject("smscount",smssrvc.comma(smsparam.getSmscount()));
        mv.setViewName("sms.jsp");
        return mv;
    }
	
	@GetMapping("/addExpenses")
    public ModelAndView addExpenses() {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("myvalues",expendvalrepo.findAll());
        mv.setViewName("addexpenses.jsp");
        return mv;
    }
	
	@RequestMapping(value ="/addExpenses",method=RequestMethod.POST)
    public ModelAndView addExpensesprocess(@ModelAttribute("expensesForm") Expenditure values) {
   		ModelAndView mv = new ModelAndView();
   		mv.addObject("myvalues",expendvalrepo.findAll());
   		boolean status = serv.saveExpenses(values);
   		if ( status == true)
   		{
   			mv.addObject("successMessage","Expenditure added Successfully!");
   		}
   		else
   		{
   			mv.addObject("failureMessage","Something went wrong!");
   		}
        mv.setViewName("addexpenses.jsp");
        return mv;
    }
	
	@GetMapping("/addvalues")
    public ModelAndView addValues() {
   		ModelAndView mv = new ModelAndView();
        mv.setViewName("addvalues.jsp");
        return mv;
    }
	
	@RequestMapping(value ="/addvalues",method=RequestMethod.POST)
    public ModelAndView addValuesprocess(@ModelAttribute("expendValues") ExpenditureTypes value) {
   		ModelAndView mv = new ModelAndView();
   	
   		boolean status = serv.saveExpendvalue(value);
   		if ( status == true)
   		{
   			mv.addObject("successMessage","Expenditure Value added Successfully!");
   		}
   		else
   		{
   			mv.addObject("failureMessage","Something went wrong!");
   		}
        mv.setViewName("addvalues.jsp");
        return mv;
    }
	
	@GetMapping("/registration")
    public ModelAndView addUser() {
   		ModelAndView mv = new ModelAndView();
        mv.setViewName("registration.jsp");
        return mv;
    }

	@GetMapping("/settings")
    public ModelAndView setSettings() {
   		ModelAndView mv = new ModelAndView();
        mv.setViewName("settings.jsp");
        
        if ( mybranch == null )
		{
        	String usr = MyUserDetailsServie.usr;
    	    User user = usrrepo.findByUsername(usr);	    
    	    username = user.getUsername();
    	    adminaccess = user.getAdminaccess();
    	    schoolcode = user.getSchoolcode();
    	    
    	    Codes code = codesrepo.findBySchoolcode(schoolcode);
    	    acadyear = code.getDefacadyear();
    	    mybranch = code.getDefbranch(); 
    	    
    	    mv.addObject("defbranch",mybranch);
            mv.addObject("defacadyear",acadyear);
            mv.addObject("username",username);
		}
		
		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
       
        mv.addObject("mybranch",branchrepo.findAll());
        
        mv.addObject("users",usrrepo.findAll());
        return mv;
    }
	
	@RequestMapping(value ="/settings",method=RequestMethod.POST)
    public ModelAndView codesUpdate(@ModelAttribute("codevalues") Codes values) {
   		ModelAndView mv = new ModelAndView();
   		System.out.println("Values:" +adminaccess);
   		if ( adminaccess.equals("Y") )
   		{
   			values.setSchoolcode(schoolcode);
   			boolean status = serv.saveValues(values);
   			if ( status == true)
   			{
   				mv.addObject("successMessage","Default Values modified Successfully!");
   			}
   			else
   			{
   				mv.addObject("failureMessage","Something went wrong!");
   			}
   		}
   		else
   		{
   			mv.addObject("failureMessage","You are not privilaged to make changes, please contact admin");
   		}
   			mv.setViewName("settings.jsp");
        return mv;
    }
	
	@GetMapping("/feesettings")
    public ModelAndView setfeeSettings() {
   		ModelAndView mv = new ModelAndView();
        mv.setViewName("feesettings.jsp");      
        if ( mybranch == null )
		{
        	String usr = MyUserDetailsServie.usr;
    	    User user = usrrepo.findByUsername(usr);	    
    	    username = user.getUsername();
    	    adminaccess = user.getAdminaccess();
    	    schoolcode = user.getSchoolcode();
    	    
    	    Codes code = codesrepo.findBySchoolcode(schoolcode);
    	    acadyear = code.getDefacadyear();
    	    mybranch = code.getDefbranch(); 
    	    
    	    mv.addObject("defbranch",mybranch);
            mv.addObject("defacadyear",acadyear);
            mv.addObject("username",username);
		}
		
		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		
		Codes code = codesrepo.findBySchoolcode(schoolcode);
		
		mv.addObject("mycodes",code);
		 
		return mv;
        
    }
	
	@GetMapping("/access")
    public ModelAndView setaccessView() {
   		ModelAndView mv = new ModelAndView();
        mv.setViewName("access.jsp");      
        if ( mybranch == null )
		{
        	String usr = MyUserDetailsServie.usr;
    	    User user = usrrepo.findByUsername(usr);	    
    	    username = user.getUsername();
    	    adminaccess = user.getAdminaccess();
    	    schoolcode = user.getSchoolcode();
    	    
    	    Codes code = codesrepo.findBySchoolcode(schoolcode);
    	    acadyear = code.getDefacadyear();
    	    mybranch = code.getDefbranch(); 
    	    
    	    mv.addObject("defbranch",mybranch);
            mv.addObject("defacadyear",acadyear);
            mv.addObject("username",username);
		}
		
		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		
		mv.addObject("users",usrrepo.findAll());
        
		return mv;
        
    }
	
	@GetMapping("/allocateaccess")
    public ModelAndView setaccessSettings() {
   		ModelAndView mv = new ModelAndView();
        mv.setViewName("allocate.jsp");    
        System.out.println(mybranch);
        if ( mybranch == null )
		{
        	String usr = MyUserDetailsServie.usr;
    	    User user = usrrepo.findByUsername(usr);	    
    	    username = user.getUsername();
    	    adminaccess = user.getAdminaccess();
    	    schoolcode = user.getSchoolcode();
    	    
    	    Codes code = codesrepo.findBySchoolcode(schoolcode);
    	    acadyear = code.getDefacadyear();
    	    mybranch = code.getDefbranch(); 
    	    
    	    mv.addObject("defbranch",mybranch);
            mv.addObject("defacadyear",acadyear);
            mv.addObject("username",username);
		}
		
		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		
		mv.addObject("users",usrrepo.findAll());
        
		return mv;
        
    }
	
	@GetMapping("/resetpwd")
    public ModelAndView resetPwd() {
   		ModelAndView mv = new ModelAndView();
        mv.setViewName("reset.jsp");      
        if ( mybranch == null )
		{
        	String usr = MyUserDetailsServie.usr;
    	    User user = usrrepo.findByUsername(usr);	    
    	    username = user.getUsername();
    	    adminaccess = user.getAdminaccess();
    	    schoolcode = user.getSchoolcode();
    	    
    	    Codes code = codesrepo.findBySchoolcode(schoolcode);
    	    acadyear = code.getDefacadyear();
    	    mybranch = code.getDefbranch(); 
    	    
    	    mv.addObject("defbranch",mybranch);
            mv.addObject("defacadyear",acadyear);
            mv.addObject("username",username);
		}
		
		mv.addObject("defbranch",mybranch);
		mv.addObject("defacadyear",acadyear);
		mv.addObject("username",username);
		  
		return mv;
        
    }
	
	public void getValues()
	{
		String usr = MyUserDetailsServie.usr;
	    User user = usrrepo.findByUsername(usr);	    
	    username = user.getUsername();
	    adminaccess = user.getAdminaccess();
	    schoolcode = user.getSchoolcode();
	    
	    Codes code = codesrepo.findBySchoolcode(schoolcode);
	    acadyear = code.getDefacadyear();
	    mybranch = code.getDefbranch(); 
	   
	}
}
