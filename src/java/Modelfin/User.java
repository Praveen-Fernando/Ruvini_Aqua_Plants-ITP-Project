/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelfin;

/**
 *
 * @author Lucifer
 */
public class User {
    protected int id;
    protected String name;
    protected String company;
    protected String address;
    protected String mobile;
    protected Double payble;
    
    public User() {}

    public User(String name, String company, String address, String mobile, Double payble) {
        super();
        this.name = name;
        this.company = company;
        this.address = address;
        this.mobile = mobile;
        this.payble = payble;
        
    }

    public User(int id, String name, String company, String address, String mobile, Double payble) {
        super();
        this.id = id;
        this.name = name;
        this.company = company;
        this.address = address;
        this.mobile = mobile;
        this.payble = payble;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public double getPayble() {
        return payble;
    }

    public void setPayble(Double payble) {
        this.payble = payble;
    }

    
}
