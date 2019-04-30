/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 00:09:15 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-01 00:13:24
 */

 package com.myproject.findbook.entity.user;

import java.security.Timestamp;

/**
  * UserBaseInfo
  */
 public class UserBaseInfo {
 
    private int No ;
    private String UserCode;
    private String Password;
    private String UserName;  
    private String Level;       
    private String RealName;
    private String Description;
    private int LoginCount;
    private Timestamp LastLoginDate;
    private String CreatePersonIP;
    private String CreateDate;
    private String UpdatePersonIP;
    private String UpdateDate;
    private boolean Delflag;
    private String BackUp1;
    private String BackUp2;
    private String BackUp3;
    private String BackUp4;
    private String BackUp5;

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
     * @return the description
     */
    public String getDescription() {
        return Description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        Description = description;
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
     * @return the createPersonIP
     */
    public String getCreatePersonIP() {
        return CreatePersonIP;
    }

    /**
     * @param createPersonIP the createPersonIP to set
     */
    public void setCreatePersonIP(String createPersonIP) {
        CreatePersonIP = createPersonIP;
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
     * @return the updatePersonIP
     */
    public String getUpdatePersonIP() {
        return UpdatePersonIP;
    }

    /**
     * @param updatePersonIP the updatePersonIP to set
     */
    public void setUpdatePersonIP(String updatePersonIP) {
        UpdatePersonIP = updatePersonIP;
    }

    /**
     * @return the updateDate
     */
    public String getUpdateDate() {
        return UpdateDate;
    }

    /**
     * @param updateDate the updateDate to set
     */
    public void setUpdateDate(String updateDate) {
        UpdateDate = updateDate;
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

    /**
     * @return the backUp1
     */
    public String getBackUp1() {
        return BackUp1;
    }

    /**
     * @param backUp1 the backUp1 to set
     */
    public void setBackUp1(String backUp1) {
        BackUp1 = backUp1;
    }

    /**
     * @return the backUp2
     */
    public String getBackUp2() {
        return BackUp2;
    }

    /**
     * @param backUp2 the backUp2 to set
     */
    public void setBackUp2(String backUp2) {
        BackUp2 = backUp2;
    }

    /**
     * @return the backUp3
     */
    public String getBackUp3() {
        return BackUp3;
    }

    /**
     * @param backUp3 the backUp3 to set
     */
    public void setBackUp3(String backUp3) {
        BackUp3 = backUp3;
    }

    /**
     * @return the backUp4
     */
    public String getBackUp4() {
        return BackUp4;
    }

    /**
     * @param backUp4 the backUp4 to set
     */
    public void setBackUp4(String backUp4) {
        BackUp4 = backUp4;
    }

    /**
     * @return the backUp5
     */
    public String getBackUp5() {
        return BackUp5;
    }

    /**
     * @param backUp5 the backUp5 to set
     */
    public void setBackUp5(String backUp5) {
        BackUp5 = backUp5;
    }
 }