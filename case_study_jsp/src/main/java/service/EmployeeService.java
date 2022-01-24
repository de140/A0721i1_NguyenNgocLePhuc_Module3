package service;

import bean.Employee;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface EmployeeService {
    ArrayList<Employee> findAllEmployee();


    public Map<String, String> createEmployee(Integer id, String firstName, String lastName, String birthday, String idCard, String phone, String email, Float salary, Integer position, Integer degree);

    void deleteEmployee(Integer idDelete);

    Employee findById(Integer id);

    void editEmployee(Integer idEdit, String firstNameEdit, String lastNameEdit, String birthdayEdit, String idCardEdit, String phoneEdit, String emailEdit, Float salaryEdit, Integer positionEdit, Integer degreeEdit);

    List<Employee> searchNameEmployee(String nameSearch);
}