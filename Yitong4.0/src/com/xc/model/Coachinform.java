package com.xc.model;

/**
 * Created by Administrator on 2018/1/7.
 */
public class Coachinform {
    private int id;
    private String coachname;
    private String coa_scage;

    public String getCoa_scage() {
        return coa_scage;
    }

    public void setCoa_scage(String coa_scage) {
        this.coa_scage = coa_scage;
    }

    private String sex;
    private String coaid;
    private String password;
    private String idcard;
    private String phone;
    private String address;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCoachname() {
        return coachname;
    }

    public void setCoachname(String coachname) {
        this.coachname = coachname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getCoaid() {
        return coaid;
    }

    public void setCoaid(String coaid) {
        this.coaid = coaid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
