package com.xc.model;

/**
 * Created by Administrator on 2018/1/7.
 */
public class UserModel {
    private int id;
    private String coa_ID;
    private String coa_password;
    private String userLevel;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getUserLevel() {
        return userLevel;
    }

    public void setUserLevel(String userLevel) {
        this.userLevel = userLevel;
    }

    public String getCoa_ID() {
        return coa_ID;
    }

    public void setCoa_ID(String coa_ID) {
        this.coa_ID = coa_ID;
    }

    public String getCoa_password() {
        return coa_password;
    }

    public void setCoa_password(String coa_password) {
        this.coa_password = coa_password;
    }
}
