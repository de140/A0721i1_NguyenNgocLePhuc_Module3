package repository;

import bean.Employee;

import java.util.ArrayList;
import java.util.List;

public interface EmployeeRepository {
    ArrayList<Employee> findAllEmployee();


    void createEmployee(Integer id, String firstName, String lastName, String birthday, String idCard, String phone, String email, Float salary, Integer position, Integer degree);

    void deleteEmployee(Integer idDelete);

    Employee findById(Integer id);

    void editEmployee(Integer idEdit, String firstNameEdit, String lastNameEdit, String birthdayEdit, String idCardEdit, String phoneEdit, String emailEdit, Float salaryEdit, Integer positionEdit, Integer degreeEdit);

    List<Employee> searchNameEmployee(String nameSearch);
}