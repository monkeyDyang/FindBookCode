/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 00:09:15 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:07:18
 */

 package com.myproject.findbook.entity.user;

import java.security.Timestamp;

/**
  * UserBaseInfo
  */
 public class UserBaseInfoEntity {
 
    private int No ;
    private String UserCode;
    private String Password;
    private String UserName;  
    private String Level;       
    private String RealName;
    private String Sex;
    private String Address;
    private int LoginCount;
    private Timestamp LastLoginDate;
    private String CreateDate;
    private boolean Delflag;

    /**
     * @return the no
     */
    public int getNo() {
        return No;
    }

    /**
     * @param no the no to set
     */
    public void setNo(int no) {
        No = no;
    }

    /**
     * @return the userCode
     */
    public String getUserCode() {
        return UserCode;
    }

    /**
     * @param userCode the userCode to set
     */
    public void setUserCode(String userCode) {
        UserCode = userCode;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return Password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        Password = password;
    }

    /**
     * @return the userName
     */
    public String getUserName() {
        return UserName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        UserName = userName;
    }

    /**
     * @return the level
     */
    public String getLevel() {
        return Level;
    }

    /**
     * @param level the level to set
     */
    public void setLevel(String level) {
        Level = level;
    }

    /**
     * @return the realName
     */
    public String getRealName() {
        return RealName;
    }

    /**
     * @param realName the realName to set
     */
    public void setRealName(String realName) {
        RealName = realName;
    }

    /**
     * @return the sex
     */
    public String getSex() {
        return Sex;
    }

    /**
     * @param sex the sex to set
     */
    public void setSex(String sex) {
        Sex = sex;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return Address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        Address = address;
    }

    /**
     * @return the loginCount
     */
    public int getLoginCount() {
        return LoginCount;
    }

    /**
     * @param loginCount the loginCount to set
     */
    public void setLoginCount(int loginCount) {
        LoginCount = loginCount;
    }

    /**
     * @return the lastLoginDate
     */
    public Timestamp getLastLoginDate() {
        return LastLoginDate;
    }

    /**
     * @param lastLoginDate the lastLoginDate to set
     */
    public void setLastLoginDate(Timestamp lastLoginDate) {
        LastLoginDate = lastLoginDate;
    }

    /**
     * @return the createDate
     */
    public String getCreateDate() {
        return CreateDate;
    }

    /**
     * @param createDate the createDate to set
     */
    public void setCreateDate(String createDate) {
        CreateDate = createDate;
    }

    /**
     * @return the delflag
     */
    public boolean isDelflag() {
        return Delflag;
    }

    /**
     * @param delflag the delflag to set
     */
    public void setDelflag(boolean delflag) {
        Delflag = delflag;
    }

    @Override
    public String toString() {
        return "UserBaseInfoEntity [Address=" + Address + ", CreateDate=" + CreateDate + ", Delflag=" + Delflag
                + ", LastLoginDate=" + LastLoginDate + ", Level=" + Level + ", LoginCount=" + LoginCount + ", No=" + No
                + ", Password=" + Password + ", RealName=" + RealName + ", Sex=" + Sex + ", UserCode=" + UserCode
                + ", UserName=" + UserName + "]";
    }


 
 }