package controller;


import bean.Customer;
import bean.Employee;
import service.CustomerService;
import service.EmployeeService;
import service.impl.CustomerServiceImpl;
import service.impl.EmployServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ServletCustomer", urlPatterns = {"/customer"})
public class ServletCustomer extends HttpServlet {
    private CustomerService customerService = new CustomerServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "create":
                Integer id = Integer.valueOf(request.getParameter("id"));
                String firstName = request.getParameter("first name");
                String lastName = request.getParameter("last name");
                String typeCustomer = request.getParameter("customer type");
                String birthday = request.getParameter("birthday");
                String idCard = request.getParameter("id card");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                String address = request.getParameter("address");
                customerService.createCustomer(id, firstName, lastName,typeCustomer, birthday, idCard, phone, email,address);
                response.sendRedirect("/customer");
                break;
            case "delete":
                Integer idDelete = Integer.valueOf(request.getParameter("idCustomer"));
                customerService.deleteCustomer(idDelete);
                response.sendRedirect("/customer");
                break;
            case "edit":
                Integer idEdit = Integer.valueOf(request.getParameter("id"));
                String firstNameEdit = request.getParameter("first name");
                String lastNameEdit = request.getParameter("last name");
                Integer typeCustomerEdit = Integer.valueOf(request.getParameter("customer type"));
                System.out.println(typeCustomerEdit);
                String birthdayEdit = request.getParameter("birthday");
                String idCardEdit = request.getParameter("id card");
                String phoneEdit = request.getParameter("phone");
                String emailEdit = request.getParameter("email");
                String addressEdit = request.getParameter("address");
                customerService.editCustomer(idEdit, firstNameEdit, lastNameEdit,typeCustomerEdit, birthdayEdit, idCardEdit, phoneEdit, emailEdit, addressEdit);
                response.sendRedirect("/customer");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("session_login") == null){
            response.sendRedirect("/login");
            return;
        }
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                request.getRequestDispatcher("/customer/addNewCustomer.jsp").forward(request, response);
                break;
            case "edit":
                Integer id = Integer.valueOf(request.getParameter("idCustomer"));
                Customer customer = customerService.findById(id);
                request.setAttribute("customer", customer);
                request.getRequestDispatcher("/customer/editCustomer.jsp").forward(request, response);
                break;
            case "search":
                String searchName = request.getParameter("searchName");
                List<Customer> customers = customerService.searchNameCustomer(searchName);
                System.out.println(customers);
                request.setAttribute("customerList", customers);
                request.getRequestDispatcher("/customer/customer.jsp").forward(request, response);
                break;
            default:
                ArrayList<Customer> customerList = customerService.findAllCustomer();
                request.setAttribute("customerList", customerList);
                request.getRequestDispatcher("/customer/customer.jsp").forward(request, response);
                break;
        }
    }
}