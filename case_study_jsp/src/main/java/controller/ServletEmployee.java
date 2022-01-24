package controller;

import bean.Employee;
import service.EmployeeService;
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
import java.util.Map;

@WebServlet(name = "ServletEmployee", urlPatterns = {"", "/employee"})
public class ServletEmployee extends HttpServlet {
    private EmployeeService employeeService = new EmployServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "create":
                Integer id = Integer.valueOf(request.getParameter("id"));
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String birthday = request.getParameter("birthday");
                String idCard = request.getParameter("id card");
                String phone = request.getParameter("phone");
                String email = request.getParameter("email");
                Float salary = Float.valueOf(request.getParameter("salary"));
                Integer position = Integer.valueOf(request.getParameter("position"));
                Integer degree = Integer.valueOf(request.getParameter("degree"));
                Employee employee = new Employee(firstName, lastName, birthday, "", idCard, phone, email, id, degree, position, salary);
                Map<String, String> errEmployee = employeeService.createEmployee(id, firstName, lastName, birthday, idCard, phone, email, salary, position, degree);
                if (!errEmployee.isEmpty()) {
                    request.setAttribute("errEmployeeCode", errEmployee.get("employeeCode"));
                    request.setAttribute("errEmployeeEmail", errEmployee.get("employeeEmail"));
                    request.setAttribute("employeeCreate", employee);
                    request.getRequestDispatcher("/employee/addNewEmployee.jsp").forward(request, response);
                } else {
                    response.sendRedirect("/employee");
                }
                break;
            case "delete":
                Integer idDelete = Integer.valueOf(request.getParameter("idEmployee"));
                employeeService.deleteEmployee(idDelete);
                response.sendRedirect("/employee");
                break;
            case "edit":
                Integer idEdit = Integer.valueOf(request.getParameter("id"));
                String firstNameEdit = request.getParameter("firstName");
                String lastNameEdit = request.getParameter("lastName");
                String birthdayEdit = request.getParameter("birthday");
                String idCardEdit = request.getParameter("id card");
                String phoneEdit = request.getParameter("phone");
                String emailEdit = request.getParameter("email");
                Float salaryEdit = Float.valueOf(request.getParameter("salary"));
                Integer positionEdit = Integer.valueOf(request.getParameter("position"));
                Integer degreeEdit = Integer.valueOf(request.getParameter("degree"));
                employeeService.editEmployee(idEdit, firstNameEdit, lastNameEdit, birthdayEdit, idCardEdit, phoneEdit, emailEdit, salaryEdit, positionEdit, degreeEdit);
                response.sendRedirect("/employee");
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
                request.getRequestDispatcher("/employee/addNewEmployee.jsp").forward(request, response);
                break;
            case "edit":
                Integer id = Integer.valueOf(request.getParameter("idEmployee"));
                Employee employee = employeeService.findById(id);
                request.setAttribute("employee", employee);
                request.getRequestDispatcher("/employee/edit.jsp").forward(request, response);
                break;
            case "search":
                String nameSearch = request.getParameter("nameSearch");
                List<Employee> employees = employeeService.searchNameEmployee(nameSearch);
                request.setAttribute("employeeList", employees);
                request.getRequestDispatcher("/employee/employee.jsp").forward(request, response);
                break;
            default:
                ArrayList<Employee> employeeList = employeeService.findAllEmployee();
                request.setAttribute("employeeList", employeeList);
                request.getRequestDispatcher("/employee/employee.jsp").forward(request, response);
                break;

        }
    }
}