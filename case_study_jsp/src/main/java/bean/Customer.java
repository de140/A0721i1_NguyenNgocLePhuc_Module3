package bean;


import java.io.Serializable;
import java.util.Arrays;

public class Customer extends Person {
    private int customerCode;
    private String customerType;
    private String address;

    public Customer() {
    }

    public Customer(int customerCode, String customerType, String address) {
        this.customerCode = customerCode;
        this.customerType = customerType;
        this.address = address;
    }

    public Customer(String firstName, String lastName, String dateOfBirth, String sex, String identityCardNumber, String telephoneNumber, String email, int customerCode, String customerType, String address) {
        super(firstName, lastName, dateOfBirth, sex, identityCardNumber, telephoneNumber, email);
        this.customerCode = customerCode;
        this.customerType = customerType;
        this.address = address;
    }

    public int getCustomerCode() {
        return customerCode;
    }

    public void setCustomerCode(int customerCode) {
        this.customerCode = customerCode;
    }

    public String getCustomerType() {
        return customerType;
    }

    public void setCustomerType(String customerType) {
        this.customerType = customerType;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerCode=" + customerCode +
                ", customerType='" + customerType + '\'' +
                ", address='" + address + '\'' +
                "} " + super.toString();
    }
}