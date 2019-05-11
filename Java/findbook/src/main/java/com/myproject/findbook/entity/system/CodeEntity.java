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

    @Override
    public String toString() {
        return "CodeEntity [Code=" + Code + ", CodeName=" + CodeName + ", CodeType=" + CodeType + ", CodeTypeName="
                + CodeTypeName + ", No=" + No + "]";
    }

 

}