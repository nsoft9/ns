package in.nsoft.live.services;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.nsoft.live.model.Payment;
import in.nsoft.live.repositories.PaymentRepo;

@Service
public class PaymentsCollectionService {

	@Autowired 
	PaymentRepo  payRepo;
	
	public List<Payment> fetchRecords() throws ParseException
	{	
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
		java.util.Date convertedCurrentDate = new SimpleDateFormat("dd/MM/yyyy").parse(dateInString);	
		d3 = convertUtilToSql(convertedCurrentDate);
		
		System.out.println("Date is:" + d3);
		
		
		return payRepo.findByTransdte(d3);
		
	}
	
	public List<Payment> fetchacademicRecords() throws ParseException
	{
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
		
		String fryear;
		if(month >= 6 && month <= 12)
		{
			fryear=String.valueOf(year);
		}
		else
		{
			fryear=String.valueOf(year-1);
		}
		
		String frday = "01";
		String frmonth="06";
		
		String frdte = frday + "/" + frmonth + "/" + fryear;
					
		dateInString = dd + "/" + dm + "/" + year;
		java.sql.Date sqltodte = null;
		java.util.Date convertedCurrenttodte = new SimpleDateFormat("dd/MM/yyyy").parse(dateInString);	
		sqltodte = convertUtilToSql(convertedCurrenttodte);
		
		java.sql.Date sqlfrdte = null;
		java.util.Date convertedCurrentfrdte = new SimpleDateFormat("dd/MM/yyyy").parse(frdte);	
		sqlfrdte = convertUtilToSql(convertedCurrentfrdte);
		
		System.out.println("Frdte:" + sqlfrdte + "  " + sqltodte);
		
		return payRepo.findByTransdte(sqlfrdte, sqltodte);
	}
	
	private static java.sql.Date convertUtilToSql(java.util.Date uDate)
	{
		java.sql.Date sDate = new java.sql.Date(uDate.getTime());
        return sDate;
	}

	public List<Payment> fetchacademicRecords(String frdte, String todte) throws ParseException 
	{
		java.sql.Date sqltodte = null;
		java.util.Date convertedCurrenttodte = new SimpleDateFormat("MM/dd/yyyy").parse(todte);	
		sqltodte = convertUtilToSql(convertedCurrenttodte);
		
		java.sql.Date sqlfrdte = null;
		java.util.Date convertedCurrentfrdte = new SimpleDateFormat("MM/dd/yyyy").parse(frdte);	
		sqlfrdte = convertUtilToSql(convertedCurrentfrdte);
		
		System.out.println("Frdte:" + sqlfrdte + "  " + sqltodte);
		
		return payRepo.findByTransdte(sqlfrdte, sqltodte);
	}
}
