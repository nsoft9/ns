package in.nsoft.live.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import in.nsoft.live.model.Attendance;

@Component
public class AttendanceValidator implements Validator {
    
    @Override
    public boolean supports(Class<?> aClass) {
        return Attendance.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Attendance stu = (Attendance) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "stuclass", "NotEmpty");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "stusec", "NotEmpty");
        
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "attenddte", "NotEmpty");
        
    }
    
    
}
