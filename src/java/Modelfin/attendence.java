/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelfin;

/**
 *
 * @author sudana
 */
public class attendence {
     protected int attID;
    protected int empID;
    protected int totalOtHours;
    protected int totalLeavs;
    protected int totalShortLeavs;
    protected int totalAttendence;
    
    public attendence(int empID,int totalOtHours,int totalLeavs,int totalShortLeavs,int totalAttendence
) {
        super();
        this.empID = empID;
        this.totalOtHours= totalOtHours;
        this.totalLeavs=totalLeavs;
        this.totalShortLeavs=totalShortLeavs;
        this.totalAttendence=totalAttendence;
    }

    public attendence(int attID,int empID,int totalOtHours,int totalLeavs,int totalShortLeavs,int totalAttendence
) {
        super();
        this.attID= attID;
        this.empID = empID;
        this.totalOtHours= totalOtHours;
        this.totalLeavs=totalLeavs;
        this.totalShortLeavs=totalShortLeavs;
        this.totalAttendence=totalAttendence;
    }

    public int getAttID() {
        return attID;
    }

    public void setAttID(int attID) {
        this.attID = attID;
    }

    public int getEmpID() {
        return empID;
    }

    public void setEmpID(int empID) {
        this.empID = empID;
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

   
}
