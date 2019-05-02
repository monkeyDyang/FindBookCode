/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-30 23:21:51 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:05:45
 */

package com.myproject.findbook.entity.system;

import java.security.Timestamp;

/**
 * CodeEntity
 */
public class CodeEntity {

    private int No;
    private String CodeType;
    private String CodeTypeName;
    private String Code;
    private String CodeName;
    private String CreatePerson;
    private Timestamp CreateDate;
    private String UpdatePerson;
    private Timestamp UpdateDate;
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
     * @return the codeType
     */
    public String getCodeType() {
        return CodeType;
    }

    /**
     * @param codeType the codeType to set
     */
    public void setCodeType(String codeType) {
        CodeType = codeType;
    }

    /**
     * @return the codeTypeName
     */
    public String getCodeTypeName() {
        return CodeTypeName;
    }

    /**
     * @param codeTypeName the codeTypeName to set
     */
    public void setCodeTypeName(String codeTypeName) {
        CodeTypeName = codeTypeName;
    }

    /**
     * @return the code
     */
    public String getCode() {
        return Code;
    }

    /**
     * @param code the code to set
     */
    public void setCode(String code) {
        Code = code;
    }

    /**
     * @return the codeName
     */
    public String getCodeName() {
        return CodeName;
    }

    /**
     * @param codeName the codeName to set
     */
    public void setCodeName(String codeName) {
        CodeName = codeName;
    }

    /**
     * @return the createPerson
     */
    public String getCreatePerson() {
        return CreatePerson;
    }

    /**
     * @param createPerson the createPerson to set
     */
    public void setCreatePerson(String createPerson) {
        CreatePerson = createPerson;
    }

    /**
     * @return the createDate
     */
    public Timestamp getCreateDate() {
        return CreateDate;
    }

    /**
     * @param createDate the createDate to set
     */
    public void setCreateDate(Timestamp createDate) {
        CreateDate = createDate;
    }

    /**
     * @return the updatePerson
     */
    public String getUpdatePerson() {
        return UpdatePerson;
    }

    /**
     * @param updatePerson the updatePerson to set
     */
    public void setUpdatePerson(String updatePerson) {
        UpdatePerson = updatePerson;
    }

    /**
     * @return the updateDate
     */
    public Timestamp getUpdateDate() {
        return UpdateDate;
    }

    /**
     * @param updateDate the updateDate to set
     */
    public void setUpdateDate(Timestamp updateDate) {
        UpdateDate = updateDate;
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

    @Override
    public String toString() {
        return "CodeEntity [BackUp1=" + BackUp1 + ", BackUp2=" + BackUp2 + ", BackUp3=" + BackUp3 + ", BackUp4="
                + BackUp4 + ", BackUp5=" + BackUp5 + ", Code=" + Code + ", CodeName=" + CodeName + ", CodeType="
                + CodeType + ", CodeTypeName=" + CodeTypeName + ", CreateDate=" + CreateDate + ", CreatePerson="
                + CreatePerson + ", No=" + No + ", UpdateDate=" + UpdateDate + ", UpdatePerson=" + UpdatePerson + "]";
    }

}