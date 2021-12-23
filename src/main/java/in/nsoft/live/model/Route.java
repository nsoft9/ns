package in.nsoft.live.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="route_tbl")
@Entity
public class Route {
	
	@Id
	private String route;
	
	private int routeamt;

	public int getRouteamt() {
		return routeamt;
	}

	public void setRouteamt(int routeamt) {
		this.routeamt = routeamt;
	}

	public String getRoute() {
		return route;
	}

	public void setRoute(String route) {
		this.route = route;
	}

}
