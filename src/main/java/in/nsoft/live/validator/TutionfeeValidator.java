package in.nsoft.live.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import in.nsoft.live.repositories.CodesRepo;
import in.nsoft.live.web.MyAppController;
import in.nsoft.live.model.Codes;
import in.nsoft.live.model.TutionFee;



@Component
public class TutionfeeValidator implements Validator {
	 
	@Autowired
	CodesRepo repo;
    
    @Override
    public boolean supports(Class<?> aClass) {
        return TutionFee.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        TutionFee tutfee = (TutionFee) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "stuclass", "NotEmpty");
       
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "feeamount", "NotEmpty");
        
        Codes codes = repo.findBySchoolcode(MyAppController.schoolcode);
        
        if ( !codes.getFetchfeefromdb().equals("1"))
        {
        	errors.reject("NotAllowed");
        }
        
    }
       
}
