package in.nsoft.live.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import in.nsoft.live.model.Student;

@Component
public class UserValidator implements Validator {
    
    @Override
    public boolean supports(Class<?> aClass) {
        return Student.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        Student stu = (Student) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "stuNme", "NotEmpty");
        if (stu.getStuNme().length() < 3 || stu.getStuNme().length() > 32) {
            errors.rejectValue("stuNme", "Size.userForm.stuNme");
        }
       
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "stuFthnme", "NotEmpty");
        if (stu.getStuFthnme().length() < 3 || stu.getStuFthnme().length() > 32) {
            errors.rejectValue("stuFthnme", "Size.userForm.stuFthnme");
        }
    }
    
    
}
