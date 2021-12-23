package in.nsoft.live.services;

import in.nsoft.live.model.Codes;
import in.nsoft.live.model.Expenditure;
import in.nsoft.live.model.ExpenditureTypes;
import in.nsoft.live.model.Student;
import in.nsoft.live.model.User;

public interface ServiceInter {

	public boolean saveStudent(Student stu);
	
	public boolean saveStudent(Student stu,String tmpStuid);
	
	public boolean saveExpendvalue(ExpenditureTypes value);
	
	public boolean saveExpenses(Expenditure exp);
	
	public boolean saveValues(Codes values);
	
}
