package in.nsoft.live.validator;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import in.nsoft.live.repositories.CodesRepo;
import in.nsoft.live.repositories.PaymentRepo;
import in.nsoft.live.repositories.StudentRepo;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import in.nsoft.live.model.Payment;
import in.nsoft.live.model.Student;

@Component
public class PaymentValidator implements Validator {
	
	Logger log = LogManager.getLogger(PaymentValidator.class);
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	static String amtinwords;
	
	@Autowired
	CodesRepo repo;
	
	@Autowired
	StudentRepo sturepo;
    
	@Autowired 
	PaymentRepo pmtrepo;
	
    @Override
    public boolean supports(Class<?> aClass) {
        return Payment.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Payment pmt = (Payment) o;
       
       ValidationUtils.rejectIfEmptyOrWhitespace(errors, "amtrcvd", "NotEmpty");
        
       Student stu = sturepo.findByStuId(pmt.getStuid());
       
       pmt.setStunme(stu.getStuNme());
       pmt.setStuclass(stu.getStuClass());
       pmt.setStusec(stu.getStuSec());
       
       int feebal = 0;
       System.out.println("Validator:" + stu.getStuId() + "  " + pmt.getFeetype());
       if ( pmt.getFeetype().equals("Tution Fee"))
       {
    	   feebal = stu.getBalTutfee();
       }
       else if ( pmt.getFeetype().equals("Bus Fee"))
       {
    	   feebal=stu.getStuBusfeebal();
       }
       
       int testval = feebal - pmt.getAmtrcvd();
       
       System.out.println("Student Id:" +stu.getStuId());
       
       if ( testval < 0  )
       {
           errors.reject("NotAllowed");
       }
       else
       {
    	   stu.setStuId(pmt.getStuid());
    	   stu.setBalTutfee(testval);
    	   stu.setTotTutfeepaid(pmt.getAmtrcvd());
    	   
    	   DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyMMdd");  
    	   LocalDate now = LocalDate.now();  
    	   String curdte = dtf.format(now);
    	   
    	   List<Payment> pmtrecords = null;
    	   
    	   if ( pmtrepo.findByTransdte(curdte) != null)
    	   {
    		   pmtrecords = pmtrepo.findByTransdte(curdte);
    	   }
    	   
    	   int listsize = pmtrecords.size();
    	   
    	   if ( listsize == 0 )
    	   {
    		   String tempid = curdte + "0001";
    		   pmt.setTransid(Integer.parseInt(tempid));
    	   }
    	   else
    	   {
    		   int tempid;
    		   for ( int i=0; i < listsize; i++)
    		   {
    			   Payment pay = pmtrecords.get(i); 
    			   tempid = pay.getTransid() + 1;
    			   pmt.setTransid(tempid);
    		   }
    		   
    	   }
    	   
    	   System.out.println("Size is :" + "   "  + listsize);
    	   
    	   String dateInString;
    	   Calendar cal = new GregorianCalendar();
    	   int day = cal.get(Calendar.DAY_OF_MONTH);
    	   int month = cal.get(Calendar.MONTH) + 1;
    	   int year = cal.get(Calendar.YEAR);
    	   
    	   String dd = "0";
    	   String dm = "0";
      		
    	   if ( day < 10 )
    	   {
    		   dd = dd + String.valueOf(day);
    	   }
    	   else
    	   {
    		   dd = String.valueOf(day);
    	   }
      		
    	   if ( month < 10 )
    	   {
    		   dm = dm + String.valueOf(month);
    	   }
    	   else
    	   {
    		   dm = String.valueOf(month);
    	   }
      					
    	   dateInString = dd + "/" + dm + "/" + year;
    	   java.sql.Date d3 = null;
    	   java.util.Date convertedCurrentDate = null;
    	   try {
    		   convertedCurrentDate = new SimpleDateFormat("dd/MM/yyyy").parse(dateInString);
    	   }catch (ParseException e1) {
    		   // TODO Auto-generated catch block
   				e1.printStackTrace();
    	   }	
    	   d3 = convertUtilToSql(convertedCurrentDate);
    	   
    	   pmt.setTransdte(d3);
    	   pmt.setPmtprocby("NSOFT");
    	   
    	   pmtrepo.save(pmt);
    			   
    	   sturepo.save(stu);
    	   
    	   try {
			print(pmt,stu);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       }
    }

	private void print(Payment pmt, Student stu) throws IOException {
		// TODO Auto-generated method stub
		
		int hn1 = pmt.getTransid();
		String hd2 = "" + pmt.getTransdte();
		String hs3 = pmt.getStuid();
		String hs4  = stu.getStuNme();
		String hs5 = pmt.getAmtrcvdfrom();
		int hn6 = pmt.getAmtrcvd();
		String hn7 = amtinwords(hn6);		
	
		try
		{	
			HashMap<String, Object>  hm = new HashMap<String, Object>();
			hm.put("transid", hn1);
			hm.put("transdte", hd2);
			hm.put("stuid", hs3);
			hm.put("stunme", hs4);
			hm.put("rcvdfrm",hs5);
			hm.put("rcvdamt",hn6);
			hm.put("amtinwords",hn7);
			hm.put("rcvdid","NSOFT");
			hm.put("stuclass",stu.getStuClass());
			hm.put("stusec",stu.getStuSec());
			
			String path = resourceLoader.getResource("classpath:FeeAck.jrxml").getURI().getPath();
			
			ArrayList<String> dataList = new ArrayList<String>();
			dataList.add("a");
			JRBeanCollectionDataSource beanColDataSource = new JRBeanCollectionDataSource(dataList);
			
			JasperReport report = JasperCompileManager.compileReport(path);
			JasperPrint jp = JasperFillManager.fillReport(report,hm ,beanColDataSource);

			File file = new File("/home/ubuntu/nsoft/receipt.pdf");
			JasperExportManager.exportReportToPdfFile(jp, file.getAbsolutePath());
			
	//		JasperExportManager.exportReportToPdfFile(jp, System.getProperty("user.home") + "\\Receipt.pdf");

		}
	    catch (Exception ex)
	    {
	           
	    }
		
	}
    
	protected static String amtinwords(int n6) {
		
		String word = null;
		 if(n6 <= 0)     
		 {
		 
		 }
		 else
		 {
			 word = pw((n6/1000000000)," Hundred");
			 word = word + pw((n6/10000000)%100," Crore");
			 word = word + pw(((n6/100000)%100)," Lakh");
			 word = word + pw(((n6/1000)%100)," Thousand");
		     word = word + pw(((n6/100)%10)," Hundred");
		     word = word + pw((n6%100)," ") + "Rupees";
		 }
		
		return word;
	}
	
	public static String pw(int n,String ch)
	  {
	    String  one[]={" "," One"," Two"," Three"," Four"," Five"," Six"," Seven"," Eight"," Nine"," Ten"," Eleven"," Twelve"," Thirteen"," Fourteen"," Fifteen"," Sixteen"," Seventeen"," Eighteen"," Nineteen"};
	 
	    String ten[]={" "," "," Twenty"," Thirty"," Forty"," Fifty"," Sixty"," Seventy"," Eighty"," Ninety"};
	 
	    if(n > 19) 
	    {
	    	 amtinwords= ten[n/10]+" "+one[n%10] ;
	    }
	    else
	    {
	    	amtinwords= one[n] ;
	    }
	    if(n > 0)
	    	 amtinwords=amtinwords + ch;
	    return amtinwords;
	  }
	
	private static java.sql.Date convertUtilToSql(java.util.Date uDate)
	{
		java.sql.Date sDate = new java.sql.Date(uDate.getTime());
        return sDate;
	}
}
