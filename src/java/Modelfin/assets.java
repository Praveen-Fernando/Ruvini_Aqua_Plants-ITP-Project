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
public class assets {
    
    protected int NO;
    protected String Name;
    protected double Value;
    
    public assets(){
        
    }
    
    public assets(String name, double value) {
        super();
        this.Name = name;
        this.Value= value;
    }

    public assets(int no, String name, double value) {
        super();
        this.NO= no;
        this.Name = name;
        this.Value= value;
    }

    public int getNO() {
        return NO;
    }

    public void setNO(int no) {
        this.NO= no;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        this.Name = name;
    }

    public double getValue() {
        return Value;
    }

    public void setValue(double value) {
        this.Value = value;
    }
    
    
    
    
}
