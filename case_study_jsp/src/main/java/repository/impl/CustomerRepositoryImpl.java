package repository.impl;

import bean.Customer;
import bean.Employee;
import repository.CustomerRepository;
import repository.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements CustomerRepository {
    @Override
    public ArrayList<Customer> findAllCustomer() {
        Connection connection = DBConnection.getConnection();
        ArrayList<Customer> customerList = new ArrayList<>();
        try {
            CallableStatement callableStatement = connection.prepareCall("call select_khach_hang()");
            ResultSet resultSet = callableStatement.executeQuery();
            Customer customer;
            while (resultSet.next()) {
                customer = new Customer();
                customer.setCustomerCode(resultSet.getInt("id_khach_hang"));
                customer.setFirstName(resultSet.getString("ho"));
                customer.setLastName(resultSet.getString("ten"));
                customer.setCustomerType(resultSet.getString("ten_loai_khach"));
                customer.setDateOfBirth(resultSet.getString("ngay_sinh"));
                customer.setIdentityCardNumber(resultSet.getString("so_chung_minh"));
                customer.setTelephoneNumber(resultSet.getString("so_dien_thoai"));
                customer.setEmail(resultSet.getString("email"));
                customer.setAddress(resultSet.getString("dia_chi"));
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }

    @Override
    public void deleteCustomer(Integer idDelete) {
        Connection connection = DBConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("delete from khach_hang where khach_hang.id_khach_hang = ?");
            preparedStatement.setInt(1, idDelete);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public void createCustomer(Integer id, String firstName, String lastName, String typeCustomer, String birthday, String idCard, String phone, String email, String address) {
        try {
            PreparedStatement preparedStatement = DBConnection.getConnection().
                    prepareStatement("insert into khach_hang(id_khach_hang,ho,ten,id_loai_khach,ngay_sinh,so_chung_minh,so_dien_thoai,email,dia_chi) value (?,?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, firstName);
            preparedStatement.setString(3, lastName);
            preparedStatement.setString(4, typeCustomer);
            preparedStatement.setString(5, birthday);
            preparedStatement.setString(6, idCard);
            preparedStatement.setString(7, phone);
            preparedStatement.setString(8, email);
            preparedStatement.setString(9, address);
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public Customer findById(Integer id) {
        Connection connection = DBConnection.getConnection();
        Customer customer = null;
        try {
            CallableStatement callableStatement = connection.prepareCall("call select_find_by_id_khach_hang(?)");
            callableStatement.setInt(1, id);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                customer = new Customer();
                customer.setCustomerCode(resultSet.getInt("id_khach_hang"));
                customer.setFirstName(resultSet.getString("ho"));
                customer.setLastName(resultSet.getString("ten"));
                customer.setCustomerType(resultSet.getString("ten_loai_khach"));
                customer.setDateOfBirth(resultSet.getString("ngay_sinh"));
                customer.setIdentityCardNumber(resultSet.getString("so_chung_minh"));
                customer.setTelephoneNumber(resultSet.getString("so_dien_thoai"));
                customer.setEmail(resultSet.getString("email"));
                customer.setAddress(resultSet.getString("dia_chi"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }

    @Override
    public void editCustomer(Integer idEdit, String firstNameEdit, String lastNameEdit, Integer typeCustomerEdit, String birthdayEdit, String idCardEdit, String phoneEdit, String emailEdit, String addressEdit) {
        Connection connection = DBConnection.getConnection();
        try {
            CallableStatement callableStatement = connection.prepareCall("call update_khach_hang(?,?,?,?,?,?,?,?,?)");
            callableStatement.setInt(1, idEdit);
            callableStatement.setString(2, firstNameEdit);
            callableStatement.setString(3, lastNameEdit);
            callableStatement.setInt(4,typeCustomerEdit);
            callableStatement.setString(5, birthdayEdit);
            callableStatement.setString(6, idCardEdit);
            callableStatement.setString(7, phoneEdit);
            callableStatement.setString(8, emailEdit);
            callableStatement.setString(9, addressEdit);
            callableStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Customer> searchNameCustomer(String nameSearch) {
        Connection connection = DBConnection.getConnection();
        ArrayList<Customer> customerList = new ArrayList<>();
        try {
            CallableStatement callableStatement = connection.prepareCall("call select_find_by_name_khach_hang(?)");
            callableStatement.setString(1, "%" + nameSearch + "%");
            ResultSet resultSet = callableStatement.executeQuery();
            Customer customer;
            while (resultSet.next()) {
                customer = new Customer();
                customer.setCustomerCode(resultSet.getInt("id_khach_hang"));
                customer.setFirstName(resultSet.getString("ho"));
                customer.setLastName(resultSet.getString("ten"));
                customer.setCustomerType(resultSet.getString("ten_loai_khach"));
                customer.setDateOfBirth(resultSet.getString("ngay_sinh"));
                customer.setIdentityCardNumber(resultSet.getString("so_chung_minh"));
                customer.setTelephoneNumber(resultSet.getString("so_dien_thoai"));
                customer.setEmail(resultSet.getString("email"));
                customer.setAddress(resultSet.getString("dia_chi"));
                customerList.add(customer);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customerList;
    }
}