/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelfin;

/**
 *
 * @author Shane
 */
public class EquityLia {
    protected int No;
    protected String Equity;
    protected String Liabilities;
    protected double Value;

    public EquityLia(String equity, String liabilities, double value) {
        super();
        this.Equity = equity;
        this.Liabilities = liabilities;
        this.Value = value;
        
        
    
    }
    
    
    public EquityLia(int no, String equity, String liabilities, double value) {
        super();
        this.No = no;
        this.Equity = equity;
        this.Liabilities = liabilities;
        this.Value = value;
        
        
    
    }

    public int getNo() {
        return No;
    }

    public void setNo(int no) {
        this.No = no;
    }

    public String getEquity() {
        return Equity;
    }

    public void setEquity(String equity) {
        this.Equity = equity;
    }

    public String getLiabilities() {
        return Liabilities;
    }

    public void setLiabilities(String liabilities) {
        this.Liabilities = liabilities;
    }

    public double getValue() {
        return Value;
    }

    public void setValue(double value) {
        this.Value = value;
    }
    
    
    
    
}
