package in.nsoft.live.exception;

import org.hibernate.exception.JDBCConnectionException;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;

public class ConnectionExceptionhandler extends RuntimeException {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private String message;
	
	public ConnectionExceptionhandler(String message)
	{
		this.setMessage(message);
	}
	
	public String getMessage()
	{
		return message;
	}
	
	public void setMessage(String message)
	{
		this.message=message;
	}
//	@ExceptionHandler(value = JDBCConnectionException.class)
//
//	public ResponseEntity<Object> exception(JDBCConnectionException ex) {
//		return ex;
//		
//	}
	
	@ExceptionHandler
	public String handleConnectionException(ConnectionExceptionhandler exception)
	{
		return exception.getMessage();
	}

	


}
