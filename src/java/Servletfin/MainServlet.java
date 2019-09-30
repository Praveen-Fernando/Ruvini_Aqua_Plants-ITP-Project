/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servletfin;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Modelfin.assets;
import DAOfin.assetsdao;

import Modelfin.EquityLia;
import DAOfin.EquityLiaDAO;
import Modelfin.EmpFinance;
import DAOfin.aEmpFin;
import Modelfin.attendence;
import Modelfin.employee;

import DAOfin.AttendenceDAO;
import DAOfin.employeeDAO;

import Modelfin.User;
import DAOfin.UserDAO;


import Modelfin.Userdelivery;
import DAOfin.UserdeliveryDAO;





@WebServlet("/")
public class MainServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private assetsdao assetDAO;
     private EquityLiaDAO equityLiaDAO;
    private UserDAO userDAO;
    private UserdeliveryDAO userdeliveryDAO;
    
     

    @Override
    public void init() {
        assetDAO = new assetsdao();
        equityLiaDAO=new EquityLiaDAO();
        userDAO=new UserDAO();
       userdeliveryDAO=new UserdeliveryDAO();
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
                //main finance
                case "/newasset":
                    showNewForm(request, response);
                    break;
                case "/insertasset":
                    insertAsset(request, response);
                    break;
                case "/deleteasset":
                    deleteAsset(request, response);
                    break;
                case "/editasset":
                    showEditForm(request, response);
                    break;
                case "/updateasset":
                    updateAsset(request, response);
                break;
                case "/neweq":
                    showNewFormeq(request, response);
                break;
                case "/inserteq":
                    insertEquityLia(request, response);
                break;
                case "/deleteeq":
                    deleteEquityLia(request, response);
                break;
                case "/editeq":
                    showEditFormeq(request, response);
                break;
                case "/updateeq":
                    updateEquityLia(request, response);
                break;
                case "/listeq":
                    listEquityLia(request, response);
                break;
                //emp finance
                case "/newC":
                    showEmpFin(request, response);
                    break;
                case "/insertC":
                    System.out.print("Insert Called");
                    insertEmpFin(request, response);
                    break;
                case "/deleteC":
                    deleteEmpFin(request, response);
                    break;
                case "/editC":
                    showEditEmpFin(request, response);
                    break;
                case "/updateC":
                    System.out.print("Update called");
                    updateEmpFin(request, response);
                    break;
                case "/editp":
                    showEd(request, response);
                    break;
                
                case "/listEmpFin":
                    listEmpFin(request, response);;
                break;
                //employyeee
                case "/newEmployee":
                    showNewFormEmployee(request, response);
                    break;
                case "/insertEmployee":
                    insertEmployee(request, response);
                    break;
                case "/deleteEmployee":
                    deleteEmployee(request, response);
                    break;
                case "/editEmployee":
                    showEditFormEmployee(request, response);
                    break;
                case "/updateEmployee":
                    updateEmployee(request, response);
                    break;
                case "/newAttendence":
                    showNewFormAttendence(request, response);
                    break;
                case "/insertAttendence":
                    insertAttendence(request, response);
                    break;
                case "/deleteAttendence":
                    deleteAttendence(request, response);
                    break;
                case "/editAttendence":
                    showEditFormAttendence(request, response);
                    break;
                case "/updateAttendence":
                    updateAattendence(request, response);
                    break;
                case "/listAttendence":
                    listAttendence(request, response);
                    break;
                    
                case "/listeeeee":
                    listEmployee(request, response);
                    break;
                //supplier
                    
                case "/new":
                    showNewFormsup(request, response);
                    break;
                case "/insert":
                    insertUsersup(request, response);
                    break;
                case "/delete":
                    deleteUsersup(request, response);
                    break;
                case "/edit":
                    showEditFormsup(request, response);
                    break;
                case "/update":
                    updateUsersup(request, response);
                    break;
                    
                case "/list":
                    updateUsersup(request, response);
                    break;
                    
                   //delivery   
                case "/newDelivery":
                    showNewFormDelivery(request, response);
                    break;
                case "/insertDelivery":
                    insertUserDelivery(request, response);
                    break;
                case "/deleteDelivery":
                    deleteUserDelivery(request, response);
                    break;
                case "/editDelivery":
                    showEditFormDelivery(request, response);
                    break;
                case "/updateDelivery":
                    updateUserDelivery(request, response);
                    break;
               
                 case "/listdel":
                    listUserDelivery(request, response);
                    break; 
                    
                    
                default:
                listAsset(request, response);
                break;
                
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void listAsset(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < assets > listAsset = assetsdao.selectAllAssets();
        request.setAttribute("listAsset",listAsset);
        RequestDispatcher dispatcher = request.getRequestDispatcher("asset-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("asset-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int NO = Integer.parseInt(request.getParameter("NO"));
        assets existingAssets = assetsdao.selectassets(NO);
        RequestDispatcher dispatcher = request.getRequestDispatcher("asset-form.jsp");
        request.setAttribute("asset", existingAssets);
        dispatcher.forward(request, response);

    }

    private void insertAsset(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String Name = request.getParameter("Name");
        Double Value = Double.parseDouble(request.getParameter("Value"));
        assets newAsset = new assets(Name,Value);
        assetsdao.insertassets(newAsset);
        response.sendRedirect("listwwwwww");
        
    }

    private void updateAsset(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int NO = Integer.parseInt(request.getParameter("NO"));
        String Name = request.getParameter("Name");
        Double Value = Double.parseDouble(request.getParameter("Value"));
        
        
        assets asset = new assets(NO, Name, Value);
        assetsdao.updateAsset(asset);
        response.sendRedirect("listwwwwww");
    }

    private void deleteAsset(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int NO = Integer.parseInt(request.getParameter("NO"));
        assetsdao.deleteAsset(NO);
        response.sendRedirect("listwwwwww");

    }
    
    
    //Equity and liabilities
    
    
    private void listEquityLia(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        System.out.println("outside");
        List < EquityLia > listEquityLia = EquityLiaDAO.selectAllEquityLia();
        request.setAttribute("listEquityLia",listEquityLia);
        RequestDispatcher dispatcher = request.getRequestDispatcher("EquityLia-list.jsp");
        dispatcher.forward(request, response);
        System.out.println("inside");
    }
    
     private void showNewFormeq(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("EquityLia-form.jsp");
        dispatcher.forward(request, response);
    }
     
     private void showEditFormeq(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int No = Integer.parseInt(request.getParameter("No"));
        EquityLia existingEquityLia = EquityLiaDAO.selectEquityLia(No);
        RequestDispatcher dispatcher = request.getRequestDispatcher("EquityLia-form.jsp");
        request.setAttribute("equitylia", existingEquityLia);
        dispatcher.forward(request, response);

    } 
     
    private void insertEquityLia(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String Equity = request.getParameter("Equity");
        String Liabilities = request.getParameter("Liabilities");
        Double Value = Double.parseDouble(request.getParameter("Value"));
        EquityLia newEquityLia = new EquityLia(Equity,Liabilities,Value);
         EquityLiaDAO.insertEquityLia(newEquityLia);
        response.sendRedirect("listeq");
        System.out.println("equitylia");
    }
    
     private void updateEquityLia(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int NO = Integer.parseInt(request.getParameter("No"));
        String Equity = request.getParameter("Equity");
        String Liabilities = request.getParameter("Liabilities");
        Double Value = Double.parseDouble(request.getParameter("Value"));
        
    

        EquityLia equitylia = new EquityLia(NO,Equity,Liabilities,Value);
        EquityLiaDAO.updateEquityLia(equitylia);
        response.sendRedirect("listeq");
    }
    
     
    private void deleteEquityLia(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int NO = Integer.parseInt(request.getParameter("NO"));
        EquityLiaDAO.deleteEquityLia(NO);
        response.sendRedirect("listeq");

    }
    
//    ==================================================================================================================================================
    //praveen
    
    
     private void listEmpFin(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < EmpFinance > listEmpFin = aEmpFin.selectAllUsers();
        request.setAttribute("listEmpFin", listEmpFin);
        RequestDispatcher dispatcher = request.getRequestDispatcher("empfin-list.jsp");
        dispatcher.forward(request, response);
    }
    
    
    
     private void showEmpFin(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("empfin-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditEmpFin(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int empID = Integer.parseInt(request.getParameter("empID"));
        EmpFinance existingUser = aEmpFin.selectEmpFin(empID);
        RequestDispatcher dispatcher = request.getRequestDispatcher("empfin-form1.jsp");
        request.setAttribute("empfin", existingUser);
        dispatcher.forward(request, response);
    }

    private void insertEmpFin(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
         System.out.print("Kalaaaaaaaaaaaaaaaaaaa");
        int empID = Integer.parseInt(request.getParameter("empID"));
        String jobType =request.getParameter("jobType");
        System.out.print("Kalaaaaaaaaaaaaaaaaaaa"+jobType);
        double salary = Double.parseDouble(request.getParameter("salary"));
        int totalOtHours = Integer.parseInt(request.getParameter("totalOtHours"));
        int totalLeavs = Integer.parseInt(request.getParameter("totalLeavs"));
        int totalShortLeavs = Integer.parseInt(request.getParameter("totalShortLeavs"));
        int totalAttendence = Integer.parseInt(request.getParameter("totalAttendence"));
        String bonus = request.getParameter("bonus");
        double gSal = Double.parseDouble(request.getParameter("gSal"));
        double netSal = Double.parseDouble(request.getParameter("netSal"));
        EmpFinance newUser = new EmpFinance(empID, jobType, salary, totalOtHours, totalLeavs, totalShortLeavs, totalAttendence, bonus, gSal, netSal);
        aEmpFin.insertEmpFin(newUser);
        response.sendRedirect("listEmpFin");
      }

    private void updateEmpFin(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
         int empID = Integer.parseInt(request.getParameter("empID"));
         String jobType =request.getParameter("jobType");
         double salary = Double.parseDouble(request.getParameter("salary"));
         int totalOtHours = Integer.parseInt(request.getParameter("totalOtHours"));
         int totalLeavs = Integer.parseInt(request.getParameter("totalLeavs"));
         int totalShortLeavs = Integer.parseInt(request.getParameter("totalShortLeavs"));
         int totalAttendence = Integer.parseInt(request.getParameter("totalAttendence"));
         String bonus =request.getParameter("bonus");
         double gSal = Double.parseDouble(request.getParameter("gSal"));
         double netSal = Double.parseDouble(request.getParameter("netSal"));
        
        
        EmpFinance empFinance = new EmpFinance(empID, jobType, salary,  totalOtHours,  totalLeavs,  totalShortLeavs, totalAttendence, bonus, gSal, netSal);
        aEmpFin.updateEmpFin(empFinance);
        response.sendRedirect("listEmpFin");
    }

    private void deleteEmpFin(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int empID = Integer.parseInt(request.getParameter("empID"));
        aEmpFin.deleteEmpFin(empID);
        response.sendRedirect("listEmpFin");

    }

    private void showEd(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int empID = Integer.parseInt(request.getParameter("empID"));
        EmpFinance newuser= aEmpFin.selectEm(empID);
        RequestDispatcher dispatcher = request.getRequestDispatcher("empfin-form.jsp");
        request.setAttribute("empfin", newuser);
        dispatcher.forward(request, response);
    }
    
    
// ========================================================================================================================================
    //apala
 private void listEmployee(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < employee > listemployee = employeeDAO.selectAllemployee();
        request.setAttribute("listemployee",listemployee);
        RequestDispatcher dispatcher = request.getRequestDispatcher("employee-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewFormEmployee(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("employee-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditFormEmployee(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        String id = request.getParameter("id");
        employee existingAssets = employeeDAO.selectemployee(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("employee-form.jsp");
        request.setAttribute("empDAO", existingAssets);
        dispatcher.forward(request, response);

    }

    private void insertEmployee(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String id = request.getParameter("id");
        String NIC = request.getParameter("NIC");
        String name=request.getParameter("name");
        String birthday=request.getParameter("birthday");
        String gendere=request.getParameter("gender");
        String email=request.getParameter("email");
        int phone=Integer.parseInt(request.getParameter("phone"));
        Double salary = Double.parseDouble(request.getParameter("salary"));
        String jobType=request.getParameter("jobType");
        String registerDate=request.getParameter("registerDate");
        employee emp = new employee(id, NIC, name, birthday, gendere, email, phone,salary,jobType, registerDate);
        employeeDAO.insertemployee(emp);
        response.sendRedirect("listeeeee");
    }

    private void updateEmployee(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String id = request.getParameter("id");
        String NIC = request.getParameter("NIC");
        String name=request.getParameter("name");
        String birthday=request.getParameter("birthday");
        String gendere=request.getParameter("gender");
        String email=request.getParameter("email");
        int phone=Integer.parseInt(request.getParameter("phone"));
        Double salary = Double.parseDouble(request.getParameter("salary"));
        String jobType=request.getParameter("jobType");
        String registerDate=request.getParameter("registerDate");

        employee emp = new employee(id, NIC, name, birthday, gendere, email, phone,salary,jobType, registerDate);
        employeeDAO.updateemployee(emp);
        response.sendRedirect("listeeeee");
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String id = request.getParameter("id");
        employeeDAO.deleteemployee(id);
        response.sendRedirect("listeeeee");

    }
    
    //attendence-----------------------------------------------------------------
    
     private void listAttendence(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
         System.out.println("going to retrive");
        List < attendence > listAttendence = AttendenceDAO.selectAllAttendence();
        request.setAttribute("listAttendence",listAttendence);
        RequestDispatcher dispatcher = request.getRequestDispatcher("attendence-list.jsp");
        dispatcher.forward(request, response);
        
    }
     
     
     private void showNewFormAttendence(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("attendence-form.jsp");
        dispatcher.forward(request, response);
    }
     
     
     private void showEditFormAttendence(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int attID = Integer.parseInt(request.getParameter("attID"));
        attendence existingAttendence = AttendenceDAO.selectAttendence(attID);
        RequestDispatcher dispatcher = request.getRequestDispatcher("attendence-form.jsp");
        request.setAttribute("attend", existingAttendence);
        dispatcher.forward(request, response);
     }
        
         private void insertAttendence(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int empID = Integer.parseInt(request.getParameter("empID"));
        int totalOtHours = Integer.parseInt(request.getParameter("totalOtHours"));
        int totalLeavs=Integer.parseInt(request.getParameter("totalLeavs"));
        int totalShortleavs =Integer.parseInt(request.getParameter("totalShortLeavs"));
        int totalAttendence=30-totalLeavs;
        attendence newAttendence = new attendence(empID, totalOtHours, totalLeavs, totalShortleavs, totalAttendence);
        AttendenceDAO.insertAttendence(newAttendence);
        response.sendRedirect("listAttendence");
        
//        System.out.println("tttttttttttttttttttt");
    }
         
         
         private void updateAattendence(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int attID = Integer.parseInt(request.getParameter("attID"));
        int empID = Integer.parseInt(request.getParameter("empID"));
        int totalOtHours = Integer.parseInt(request.getParameter("totalOtHours"));
        int totalLeavs=Integer.parseInt(request.getParameter("totalLeavs"));
        int totalShortleavs =Integer.parseInt(request.getParameter("totalShortLeavs"));
        int totalAttendence=30-totalLeavs;
    

        attendence attend = new attendence(attID, empID, totalOtHours, totalLeavs, totalShortleavs, totalAttendence);
        AttendenceDAO.updateAttendence(attend);
        response.sendRedirect("listAttendence");
    }
         
         
          private void deleteAttendence(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int attID = Integer.parseInt(request.getParameter("attID"));
        AttendenceDAO.deleteAttendence(attID);
        response.sendRedirect("listAttendence");

    }
          
          
          //kasun================
          
          
          
    private void listUsersup(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < User > listUser = userDAO.selectAllUsers();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewFormsup(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditFormsup(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User existingUser = userDAO.selectUser(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);
        System.out.print("thdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+id);

    }

    private void insertUsersup(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
       
        String name = request.getParameter("name");
        String company = request.getParameter("company");
        String address = request.getParameter("address");
        String mobile = request.getParameter("mobile");
        Double payble = Double.parseDouble (request.getParameter("payble"));
        User newUser = new User(name, company, address, mobile, payble);
        userDAO.insertUser(newUser);
        response.sendRedirect("list");
    }

    private void updateUsersup(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
     
        String name = request.getParameter("name");
        String company = request.getParameter("company");
        String address = request.getParameter("address");
        String mobile = request.getParameter("mobile");
        Double payble =Double.parseDouble (request.getParameter("payble"));
        User book = new User(name, company, address, mobile, payble);
        userDAO.updateUser(book);
        
  System.out.print("thadaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"+book);
        response.sendRedirect("list");
    }

    private void deleteUsersup(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        userDAO.deleteUser(id);
        response.sendRedirect("list");

    }
    
    //////////////////anushi
    
    
    
    private void listUserDelivery(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < Userdelivery > listUser = userdeliveryDAO.selectAllUsers();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("info.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewFormDelivery(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("index50.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditFormDelivery(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("deliveryID"));
        Userdelivery existingUser = userdeliveryDAO.selectUser(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("index50.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);

    }

    private void insertUserDelivery(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String OrderNumber = request.getParameter("OrderNumber");
        String ReceiverName = request.getParameter("ReceiverName");
        String ReceiverAddress = request.getParameter("ReceiverAddress");
        String TelephoneNumber = request.getParameter("TelephoneNumber");
        String PostalCode = request.getParameter("PostalCode");
        String Remark = request.getParameter("Remark");
        Userdelivery newUser = new Userdelivery(OrderNumber, ReceiverName, ReceiverAddress,TelephoneNumber,PostalCode,Remark);
        userdeliveryDAO.insertUser(newUser);
        response.sendRedirect("listdel");
    }

    private void updateUserDelivery(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int DeliveryID = Integer.parseInt(request.getParameter("deliveryID"));
        String OrderNumber = request.getParameter("OrderNumber");
        String ReceiverName = request.getParameter("ReceiverName");
        String ReceiverAddress= request.getParameter("ReceiverAddress");
        String TelephoneNumber = request.getParameter("TelephoneNumber");
        String PostalCode = request.getParameter("PostalCode");
        String Remark= request.getParameter("Remark");

        Userdelivery book = new Userdelivery(DeliveryID, OrderNumber, ReceiverName, ReceiverAddress,TelephoneNumber,PostalCode,Remark);
        userdeliveryDAO.updateUser(book);
        response.sendRedirect("listdel");
    }

    private void deleteUserDelivery(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int DeliveryID = Integer.parseInt(request.getParameter("deliveryID"));
        userdeliveryDAO.deleteUser(DeliveryID);
        response.sendRedirect("listdel");

    }
    
    
    
    
}