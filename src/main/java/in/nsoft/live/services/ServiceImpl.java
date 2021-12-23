package in.nsoft.live.services;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.nsoft.live.model.Codes;
import in.nsoft.live.model.Expenditure;
import in.nsoft.live.model.ExpenditureTypes;
import in.nsoft.live.model.Route;
import in.nsoft.live.model.Student;
import in.nsoft.live.model.TutionFee;
import in.nsoft.live.model.User;
import in.nsoft.live.repositories.CodesRepo;
import in.nsoft.live.repositories.ExpenditureRepo;
import in.nsoft.live.repositories.ExpenditureValuesRepo;
import in.nsoft.live.repositories.RouteRepo;
import in.nsoft.live.repositories.ServiceRepo;
import in.nsoft.live.repositories.StudentRepo;
import in.nsoft.live.repositories.TutionfeeRepo;
import in.nsoft.live.web.MyAppController;

@Service
public class ServiceImpl implements ServiceInter {
		
	@Autowired
	StudentRepo sturepo;
	
	@Autowired
	RouteRepo routerepo;
	
	@Autowired
	ServiceRepo usrrepo;
	
	@Autowired
	TutionfeeRepo tutfeerepo;

	@Autowired
	CodesRepo codesrepo;
	
	@Autowired
	ExpenditureValuesRepo expvalrepo;
	
	@Autowired
	ExpenditureRepo exprepo;
	
	@Override
	public boolean saveStudent(Student stu)
	{
		String schoolcode = MyAppController.schoolcode;
		Codes code = codesrepo.findBySchoolcode(schoolcode);
		
		System.out.println("MyCodes:" + code.getFetchfeefromdb());
		
		String stuid = (String) sturepo.findByStudentId("2021-22");
		
		System.out.println("Student id is :" + stuid) ;
		
		stu.setStuId(generateId(stuid));
		
		if ( code.getFetchfeefromdb().equals("1"))
		{
			System.out.println("fees assign");
			if ( stu.getStuClass().equals("NUR") )
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("NUR");
				System.out.println("Tution Fee" +tutfee.getFeeamount());
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("LKG"))
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("LKG");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("UKG") )
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("UKG");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("I"))
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("I");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("II") )
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("II");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("III"))
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("III");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("IV") )
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("IV");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("V"))
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("V");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("VI") )
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("VI");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("VII"))
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("VII");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("VIII") )
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("VIII");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("IX"))
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("IX");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			else if ( stu.getStuClass().equals("X") )
			{
				TutionFee tutfee = tutfeerepo.findByStuclass("X");
				stu.setStuTutfee(tutfee.getFeeamount());
				stu.setBalTutfee(tutfee.getFeeamount());
				stu.setTotTutfeepaid(0);
			}
			
		}
		
		System.out.println("Student Bus Route:" + stu.getStuBussrvcroute());
		if ( stu.getStuBussrvcroute().equals("Not Required"))
		{
			stu.setStuBussrvcreq("N");
			stu.setStuBusfee(0);
			stu.setStuBusfeebal(0);
			stu.setStuBusfeepaid(0);
		}
		else if ( !stu.getStuBussrvcroute().equals(null))
		{
			Route rut = routerepo.findByRoute(stu.getStuBussrvcroute());
			stu.setStuBussrvcreq("Y");
			stu.setStuBusfee(rut.getRouteamt());
			stu.setStuBusfeebal(rut.getRouteamt());
			stu.setStuBusfeepaid(0);
		}
		else
		{
			stu.setStuBussrvcreq("N");
			stu.setStuBusfee(0);
			stu.setStuBusfeebal(0);
			stu.setStuBusfeepaid(0);
		}
		
//		Calendar cal = new GregorianCalendar();
// 	   	int month = cal.get(Calendar.MONTH) + 1;
// 	   	int year = cal.get(Calendar.YEAR);
// 	   	
// 	   	if ( month <= 12 && month >= 6)
// 	   	{
// 	   		String yy = String.valueOf(year);
// 	   		String temp = year+"-"+(Integer.parseInt(yy.substring(2,4))+1);
// 	   		stu.setAcademicyear(temp);
// 	   	}
// 	   	else
// 	   	{
// 	   		String yy = String.valueOf(year);
//	   		String temp = year+"-"+ (Integer.parseInt(yy.substring(2,4))-1);
//	   		stu.setAcademicyear(temp);
// 	   	}
 	   	
		stu.setAcademicyear(MyAppController.acadyear);
		stu.setStuActiveflag("Y");
		
		Student student = sturepo.save(stu);
		return (student!=null)?true:false;
	}
	
	@Override
	public boolean saveStudent(Student stu, String tmpStuid) {
	
		String schoolcode = MyAppController.schoolcode;
		Codes code = codesrepo.findBySchoolcode(schoolcode);
		
		System.out.println("MyCodes:" + code.getFetchfeefromdb() + " STUID "  + tmpStuid);		
		Student tmplist = sturepo.findByStuId(tmpStuid);
		
		String stucls[] = { "NUR","LKG","UKG","I","II","III","IV","V","VI","VII","VIII","IX","X"};
		
		int prevclass = 0,presclass = 0;
		
		String prevstuclass = tmplist.getStuClass();
		
		System.out.println("Prev class:"+prevstuclass);
		
		for( int i=0; i<stucls.length;i++)
		{
			if ( prevstuclass.equals(stucls[i]))
			{
				prevclass=i;
			}
			if ( stu.getStuClass().equals(stucls[i]))
			{
				presclass=i;
			}
		}
		
		System.out.println("Classes:" +prevclass + "" + presclass); 
		if ( presclass != prevclass )
		{
			if ( presclass == prevclass + 1)
			{
				if (code.getFetchfeefromdb().equals("1"))
				{	
					if ( stu.getStuClass().equals("NUR") )
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("NUR");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("LKG"))
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("LKG");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("UKG") )
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("UKG");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("I"))
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("I");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("II") )
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("II");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("III"))
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("III");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("IV") )
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("IV");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("V"))
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("V");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("VI") )
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("VI");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("VII"))
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("VII");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("VIII") )
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("VIII");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("IX"))
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("IX");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
					else if ( stu.getStuClass().equals("X") )
					{
						TutionFee tutfee = tutfeerepo.findByStuclass("X");
						int prevfee = tmplist.getStuTutfee();
						int presfee = tutfee.getFeeamount();
						int tmpvalue = presfee - prevfee;
						stu.setStuTutfee(tutfee.getFeeamount());
						stu.setBalTutfee(tmplist.getBalTutfee()+tmpvalue);
						stu.setTotTutfeepaid(tmplist.getTotTutfeepaid());
					}
				}
			}
				
		}
		
		System.out.println("Acad :" + MyAppController.acadyear);
		
		stu.setAcademicyear(MyAppController.acadyear);
		
		stu.setStuId(tmpStuid);
		
		System.out.println("Student Bus Route:" + stu.getStuBussrvcroute());
		if ( stu.getStuBussrvcroute().equals("Not Required"))
		{
			stu.setStuBussrvcreq("N");
			stu.setStuBusfee(0);
			stu.setStuBusfeebal(0);
			stu.setStuBusfeepaid(0);
		}
		else if ( !stu.getStuBussrvcroute().equals(null))
		{
			Route rut = routerepo.findByRoute(stu.getStuBussrvcroute());
			stu.setStuBussrvcreq("Y");
			stu.setStuBusfee(rut.getRouteamt());
			stu.setStuBusfeebal(rut.getRouteamt());
			stu.setStuBusfeepaid(0);
		}
		else
		{
			stu.setStuBussrvcreq("N");
			stu.setStuBusfee(0);
			stu.setStuBusfeebal(0);
			stu.setStuBusfeepaid(0);
		}
		
		
		Student student = sturepo.save(stu);
	
		return (student!=null)?true:false;
	}

	@Override
	public boolean saveExpendvalue(ExpenditureTypes value) {	
		ExpenditureTypes test = expvalrepo.save(value);
		return (test!=null)?true:false;
	}

	@Override
	public boolean saveExpenses(Expenditure exp) {
		java.util.Date expenddte = exp.getExpenditureDate();
 	   	exp.setExpenditureDate(convertUtilToSql(expenddte));
		
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
    	String strDate= formatter.format(exp.getExpenditureDate());
    	int dd = Integer.parseInt(strDate.substring(3, 5));
    	int mm = Integer.parseInt(strDate.substring(0, 2));
    	int yyyy = Integer.parseInt(strDate.substring(6, 10));
    	int yy = Integer.parseInt(strDate.substring(8, 10));
    	String academicyear;
    	if ( mm >= 6 && mm <= 12 )
    	{
    		academicyear = yyyy + "" +  (yy+1);
    	}
    	else
    	{
    		academicyear = (yyyy-1) + "" + yy;
    	}
    	
    	System.out.println("Date:" + academicyear);
    	exp.setAcademicYear(academicyear);
    	
    	Expenditure test = exprepo.save(exp);
		return (test!=null)?true:false;
	}
	

	private static java.sql.Date convertUtilToSql(java.util.Date uDate)
	{
		java.sql.Date sDate = new java.sql.Date(uDate.getTime());
        return sDate;
	}

	@Override
	public boolean saveValues(Codes values) {
		
		System.out.println("Default Values:" + values.getDefbranch()+ "  "  + values.getDefacadyear());
		int i = codesrepo.findBySchoolcode(values.getDefbranch(), values.getDefacadyear()); 
		System.out.println("Value of I" + i);
		return (String.valueOf(i)!=null)?true:false;
		
		
	}
	
	String generateId(String stuid)
	{
		System.out.println("in id");
		String genid;
		if ( stuid == null )
		{
			System.out.println("error");
			genid = "20210001";
		}
		else
		{
			System.out.println("else error");
			int tempid = Integer.parseInt(stuid);
			tempid = tempid + 1;
			genid = String.valueOf(tempid);
		}
		
		return genid;
	}
}
