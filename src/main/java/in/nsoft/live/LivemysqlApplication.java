package in.nsoft.live;

import org.apache.catalina.Context;
import org.apache.tomcat.util.scan.StandardJarScanner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootApplication
@Configuration
public class LivemysqlApplication extends SpringBootServletInitializer  {
	
	public static void main(String[] args) {
		SpringApplication.run(LivemysqlApplication.class, args);
	}
	
	@Bean
	public TomcatServletWebServerFactory tomcatFactory() {
	    return new TomcatServletWebServerFactory() {
	      @Override
	      protected void postProcessContext(Context context) {
	        ((StandardJarScanner) context.getJarScanner()).setScanManifest(false);
	      }
	    };
	}	
	
}
