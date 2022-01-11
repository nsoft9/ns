package in.nsoft.live.Securityservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import in.nsoft.live.model.User;
import in.nsoft.live.repositories.ServiceRepo;

@Service
public class MyUserDetailsServie implements UserDetailsService {

	@Autowired
	private ServiceRepo repo;
	public static String usr;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		
		User user = repo.findByUsername(username);
		if ( user == null)
		{
			throw new UsernameNotFoundException("User Not Found");
		}
		else
		{
			usr = user.getUsername();
		}
		
		return new UserPrinciple(user);
	}

	
	
}
