package repository;

import bean.Customer;

import java.util.ArrayList;
import java.util.List;

public interface CustomerRepository {
    ArrayList<Customer> findAllCustomer();

    void deleteCustomer(Integer idDelete);

    void createCustomer(Integer id, String firstName, String lastName, String typeCustomer, String birthday, String idCard, String phone, String email, String address);

    Customer findById(Integer id);

    void editCustomer(Integer idEdit, String firstNameEdit, String lastNameEdit, Integer typeCustomerEdit, String birthdayEdit, String idCardEdit, String phoneEdit, String emailEdit, String addressEdit);

    List<Customer> searchNameCustomer(String nameSearch);
}