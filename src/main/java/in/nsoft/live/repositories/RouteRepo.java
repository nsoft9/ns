package in.nsoft.live.repositories;

import org.springframework.data.repository.CrudRepository;

import in.nsoft.live.model.Route;

public interface RouteRepo extends CrudRepository<Route,String>{
	
	Route findByRoute(String route);

}
