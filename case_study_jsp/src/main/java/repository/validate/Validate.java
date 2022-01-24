package repository.validate;

import repository.EmployeeRepository;
import repository.impl.EmployeeRepositoryImpl;

public class Validate {
    static EmployeeRepository employeeRepository = new EmployeeRepositoryImpl();
    public static String validateEmployeeCode(Integer employeeCode) {
        String message = null;
        if(employeeRepository.findById(employeeCode) != null) {
            message = "Id bị trùng, mời bạn nhập lại";
        }
        return message;
    }
    public static String validateEmployeeEmail(String employeeEmail) {
        String message = null;
        String regex = "\\b[A-Z0-9._%-]+@[A-Z0-9.-]+\\.[A-Z]{2,4}\\b";
        if(!employeeEmail.matches(regex)) {
            message = "Email không đúng mời bạn nhập lại";
        }
        return message;
    }
}