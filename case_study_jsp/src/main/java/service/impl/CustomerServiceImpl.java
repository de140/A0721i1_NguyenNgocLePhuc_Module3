package service.impl;

import bean.Customer;
import repository.CustomerRepository;
import repository.impl.CustomerRepositoryImpl;
import service.CustomerService;

import java.util.ArrayList;
import java.util.List;

public class CustomerServiceImpl implements CustomerService {
    CustomerRepository customerRepository = new CustomerRepositoryImpl();
    @Override
    public ArrayList<Customer> findAllCustomer() {
        return customerRepository.findAllCustomer();
    }

    @Override
    public void deleteCustomer(Integer idDelete) {
        customerRepository.deleteCustomer(idDelete);
    }

    @Override
    public void createCustomer(Integer id, String firstName, String lastName, String typeCustomer, String birthday, String idCard, String phone, String email, String address) {
        customerRepository.createCustomer(id,firstName,lastName,typeCustomer,birthday,idCard,phone,email,address);
    }

    @Override
    public Customer findById(Integer id) {
        return customerRepository.findById(id);
    }

    @Override
    public void editCustomer(Integer idEdit, String firstNameEdit, String lastNameEdit, Integer typeCustomerEdit, String birthdayEdit, String idCardEdit, String phoneEdit, String emailEdit, String addressEdit) {
        customerRepository.editCustomer(idEdit,firstNameEdit,lastNameEdit,typeCustomerEdit,birthdayEdit,idCardEdit,phoneEdit,emailEdit,addressEdit);
    }

    @Override
    public List<Customer> searchNameCustomer(String nameSearch) {
        return customerRepository.searchNameCustomer(nameSearch);
    }
}