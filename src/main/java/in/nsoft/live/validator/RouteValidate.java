package in.nsoft.live.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import in.nsoft.live.model.Route;


@Component
public class RouteValidate implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return Route.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "route", "NotEmpty");
       
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "routeamt", "NotEmpty");
        
    }
    
    
}
