package service.impl;

import bean.Employee;
import repository.EmployeeRepository;
import repository.impl.EmployeeRepositoryImpl;
import repository.validate.Validate;
import service.EmployeeService;

import java.util.*;

public class EmployServiceImpl implements EmployeeService {
    EmployeeRepository employeeRepository = new EmployeeRepositoryImpl();

    @Override
    public ArrayList<Employee> findAllEmployee() {
        return employeeRepository.findAllEmployee();
    }

    @Override
    public Map<String, String> createEmployee(Integer id, String firstName, String lastName, String birthday, String idCard, String phone,
                                              String email, Float salary, Integer position, Integer degree) {
        Map<String, String> validateMap = new HashMap<>();
        if (Validate.validateEmployeeCode(id) != null || Validate.validateEmployeeEmail(email) != null) {
            validateMap.put("employeeCode",Validate.validateEmployeeCode(id));
            validateMap.put("employeeEmail", Validate.validateEmployeeEmail(email));
        } else {
            employeeRepository.createEmployee(id, firstName, lastName, birthday, idCard, phone, email, salary, position, degree);
        }
        return validateMap;
    }

    @Override
    public void deleteEmployee(Integer idDelete) {
        employeeRepository.deleteEmployee(idDelete);
    }

    @Override
    public Employee findById(Integer id) {
        return employeeRepository.findById(id);
    }

    @Override
    public void editEmployee(Integer idEdit, String firstNameEdit, String lastNameEdit, String birthdayEdit, String idCardEdit,
                             String phoneEdit, String emailEdit, Float salaryEdit, Integer positionEdit, Integer degreeEdit) {

        employeeRepository.editEmployee(idEdit, firstNameEdit, lastNameEdit, birthdayEdit, idCardEdit, phoneEdit, emailEdit, salaryEdit, positionEdit, degreeEdit);
    }

    @Override
    public List<Employee> searchNameEmployee(String nameSearch) {
        return employeeRepository.searchNameEmployee(nameSearch);
    }
}