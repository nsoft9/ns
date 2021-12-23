package in.nsoft.live.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.nsoft.live.model.SMS;
import in.nsoft.live.repositories.SmsRepo;

@Service
public class SMSService {
	
	@Autowired
	SmsRepo smsrepo;
	
	public SMS fetchRecord(String userid)
	{
		return smsrepo.findByUserid(userid);
	}
	
	public String comma(int value)
	{
		String str = null;
		String t = String.valueOf(value);
		if ( t.length() == 9 )
		{
			str = t.substring(0,2) + "," + t.substring(2,4) + "," + t.substring(4,6) + "," + t.substring(6,9);
		}
		else if ( t.length() == 8 )
		{
			str = t.substring(0, 1) + "," + t.substring(1,3) + "," + t.substring(3,5) + "," + t.substring(5,8);
		}
		
		else if ( t.length() == 7 )
		{
			str = t.substring(0,2) + "," + t.substring(2,4) + "," + t.substring(4,7);
		}
		
		else if ( t.length() == 6 )
		{
			str = t.substring(0, 1) + "," + t.substring(1,3) + "," + t.substring(3,6);
		}
		
		else if ( t.length() ==  5 )
		{
			str = t.substring(0, 2) + "," + t.substring(2,5);
		}
		
		else if ( t.length() == 4 )
		{
			str = t.substring(0,1) + "," + t.substring(1,4);
		}
		else if ( t.length() < 4 )
		{
			str = t.substring(0,t.length());
		}
		
		return str;	
		
	}

}
