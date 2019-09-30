/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelfin;

/**
 *
 * @author ACER
 */
public class EmpFinance {
     private int empID;
     private String jobType;
     private double salary;
     private int totalOtHours;
     private int totalLeavs;
     private int totalShortLeavs;
     private int totalAttendence;
     private String bonus;
     private double gSal;
     private double netSal;
     
     
    public EmpFinance( String jobType, double salary, int totalOtHours, int totalLeavs, int totalShortLeavs,int totalAttendence,String bonus,double gSal,double netSal) {
        super();
        this.jobType = jobType;
        this.salary = salary;
        this.totalOtHours = totalOtHours;
        this.totalLeavs = totalLeavs;
        this.totalShortLeavs = totalShortLeavs;
        this.totalAttendence = totalAttendence;
        this.bonus = bonus;
        this.gSal = gSal;
        this.netSal = netSal;
    }
    
      public EmpFinance(int empID, String jobType, double salary, int totalOtHours, int totalLeavs, int totalShortLeavs,int totalAttendence,String bonus,double gSal,double netSal) {
        super();
        this.empID = empID;
        this.jobType = jobType;
        this.salary = salary;
        this.totalOtHours = totalOtHours;
        this.totalLeavs = totalLeavs;
        this.totalShortLeavs = totalShortLeavs;
        this.totalAttendence = totalAttendence;
        this.bonus = bonus;
        this.gSal = gSal;
        this.netSal = netSal;
    }

    public EmpFinance(int empID,String jobType, double salary, int totalOtHours, int totalLeavs, int totalShortLeavs, int totalAttendence) {
        this.empID = empID;
        this.jobType=jobType;
        this.salary=salary;
        this.totalOtHours=totalOtHours;
        this.totalLeavs=totalLeavs;
       this.totalShortLeavs=totalShortLeavs;
       this.totalAttendence=totalAttendence;
    }
      
//          public EmpFinance(String jobType, double salary, int totalOtHours, int totalLeavs, int totalShortLeavs, int totalAttendence) {
//        
//        this.jobType=jobType;
//        this.salary=salary;
//        this.totalOtHours=totalOtHours;
//        this.totalLeavs=totalLeavs;
//       this.totalShortLeavs=totalShortLeavs;
//       this.totalAttendence=totalAttendence;
//    }

    public int getEmpID() {
        return empID;
    }

    public void setEmpID(int empID) {
        this.empID = empID;
    }
   
    public String getJobType() {
        return jobType;
    }

    public void setJobType(String jobType) {
        this.jobType = jobType;
    }
    
    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public int getTotalOtHours() {
        return totalOtHours;
    }

    public void setTotalOtHours(int totalOtHours) {
        this.totalOtHours = totalOtHours;
    }

    public int getTotalLeavs() {
        return totalLeavs;
    }

    public void setTotalLeavs(int totalLeavs) {
        this.totalLeavs = totalLeavs;
    }

    public int getTotalShortLeavs() {
        return totalShortLeavs;
    }

    public void setTotalShortLeavs(int totalShortLeavs) {
        this.totalShortLeavs = totalShortLeavs;
    }

    public int getTotalAttendence() {
        return totalAttendence;
    }

    public void setTotalAttendence(int totalAttendence) {
        this.totalAttendence = totalAttendence;
    }

    public String getBonus() {
        return bonus;
    }

    public void setBonus(String bonus) {
        this.bonus = bonus;
    }

    public double getgSal() {
        return gSal;
    }

    public void setgSal(double gSal) {
        this.gSal = gSal;
    }
 

    public double getNetSal() {
        return netSal;
    }

    public void setNetSal(double netSal) {
        this.netSal = netSal;
    }

 
    
        
}
