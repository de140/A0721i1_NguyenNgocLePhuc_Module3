package repository.impl;

import bean.Employee;
import repository.DBConnection;
import repository.EmployeeRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class EmployeeRepositoryImpl implements EmployeeRepository {
    @Override
    public ArrayList<Employee> findAllEmployee() {
        Connection connection = DBConnection.getConnection();
        ArrayList<Employee> employeeList = new ArrayList<>();
        try {
            CallableStatement callableStatement = connection.prepareCall("call select_nhan_vien()");
            ResultSet resultSet = callableStatement.executeQuery();
            Employee employee;
            while (resultSet.next()) {
                employee = new Employee();
                employee.setEmployeeCode(resultSet.getInt("id_nhan_vien"));
                employee.setFirstName(resultSet.getString("ho"));
                employee.setLastName(resultSet.getString("ten"));
                employee.setPosition(resultSet.getString("ten_vi_tri"));
                employee.setDegree(resultSet.getString("trinh_do"));
                employee.setDateOfBirth(resultSet.getString("ngay_sinh"));
                employee.setIdentityCardNumber(resultSet.getString("so_chung_minh"));
                employee.setTelephoneNumber(resultSet.getString("so_dien_thoai"));
                employee.setEmail(resultSet.getString("email"));
                employee.setSalary(resultSet.getFloat("luong"));
                employeeList.add(employee);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }

    @Override
    public void createEmployee(Integer id, String firstName, String lastName, String birthday, String idCard, String phone, String email, Float salary, Integer position, Integer degree) {
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().
                    prepareStatement("insert into nhan_vien(id_nhan_vien,ho,ten,id_vi_tri,id_trinh_do,ngay_sinh,so_chung_minh,luong,so_dien_thoai,email) value (?,?,?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, firstName);
            preparedStatement.setString(3, lastName);
            preparedStatement.setInt(4, position);
            preparedStatement.setInt(5, degree);
            preparedStatement.setString(6, birthday);
            preparedStatement.setString(7, idCard);
            preparedStatement.setFloat(8, salary);
            preparedStatement.setString(9, phone);
            preparedStatement.setString(10, email);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void deleteEmployee(Integer idDelete) {
        Connection connection = DBConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from nhan_vien where id_nhan_vien = ?");
            preparedStatement.setInt(1, idDelete);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    @Override
    public Employee findById(Integer id) {
        Connection connection = DBConnection.getConnection();
        Employee employee = null;
        try {
            CallableStatement callableStatement = connection.prepareCall("call select_find_by_id_nhan_vien(?)");
            callableStatement.setInt(1, id);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                employee = new Employee();
                employee.setEmployeeCode(resultSet.getInt("id_nhan_vien"));
                employee.setFirstName(resultSet.getString("ho"));
                employee.setLastName(resultSet.getString("ten"));
                employee.setPosition(resultSet.getString("ten_vi_tri"));
                employee.setDegree(resultSet.getString("trinh_do"));
                employee.setDateOfBirth(resultSet.getString("ngay_sinh"));
                employee.setIdentityCardNumber(resultSet.getString("so_chung_minh"));
                employee.setTelephoneNumber(resultSet.getString("so_dien_thoai"));
                employee.setEmail(resultSet.getString("email"));
                employee.setSalary(resultSet.getFloat("luong"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employee;
    }

    @Override
    public void editEmployee(Integer idEdit, String firstNameEdit, String lastNameEdit, String birthdayEdit, String idCardEdit, String phoneEdit, String emailEdit, Float salaryEdit, Integer positionEdit, Integer degreeEdit) {
        Connection connection = DBConnection.getConnection();
        try {
            CallableStatement callableStatement = connection.prepareCall("call update_nhan_vien(?,?,?,?,?,?,?,?,?,?)");
            callableStatement.setInt(1, idEdit);
            callableStatement.setString(2, firstNameEdit);
            callableStatement.setString(3, lastNameEdit);
            callableStatement.setInt(4, positionEdit);
            callableStatement.setInt(5, degreeEdit);
            callableStatement.setString(6, birthdayEdit);
            callableStatement.setString(7, idCardEdit);
            callableStatement.setFloat(8, salaryEdit);
            callableStatement.setString(9, phoneEdit);
            callableStatement.setString(10, emailEdit);
            callableStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Employee> searchNameEmployee(String nameSearch) {
        List<Employee>  employeeList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        try {
            CallableStatement callableStatement = connection.prepareCall("call select_find_by_name_nhan_vien(?)");
            callableStatement.setString(1, "%" + nameSearch +"%");
            ResultSet resultSet = callableStatement.executeQuery();
            Employee employee;
            while (resultSet.next()) {
                employee = new Employee();
                employee.setEmployeeCode(resultSet.getInt("id_nhan_vien"));
                employee.setFirstName(resultSet.getString("ho"));
                employee.setLastName(resultSet.getString("ten"));
                employee.setPosition(resultSet.getString("ten_vi_tri"));
                employee.setDegree(resultSet.getString("trinh_do"));
                employee.setDateOfBirth(resultSet.getString("ngay_sinh"));
                employee.setIdentityCardNumber(resultSet.getString("so_chung_minh"));
                employee.setTelephoneNumber(resultSet.getString("so_dien_thoai"));
                employee.setEmail(resultSet.getString("email"));
                employee.setSalary(resultSet.getFloat("luong"));
                employeeList.add(employee);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return employeeList;
    }


}