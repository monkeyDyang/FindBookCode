/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-30 21:39:01 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 13:27:12
 */

 package com.myproject.findbook.entity.system;

/**
 * AreaEntity
 */
public class AreaEntity {


    private String AreaCode;
    private String AreaName;
    private String AreaLevel;
    private String ParentAreaCode;

    /**
     * @return the areaCode
     */
    public String getAreaCode() {
        return AreaCode;
    }

    /**
     * @param areaCode the areaCode to set
     */
    public void setAreaCode(String areaCode) {
        AreaCode = areaCode;
    }

    /**
     * @return the areaName
     */
    public String getAreaName() {
        return AreaName;
    }

    /**
     * @param areaName the areaName to set
     */
    public void setAreaName(String areaName) {
        AreaName = areaName;
    }

    /**
     * @return the areaLevel
     */
    public String getAreaLevel() {
        return AreaLevel;
    }

    /**
     * @param areaLevel the areaLevel to set
     */
    public void setAreaLevel(String areaLevel) {
        AreaLevel = areaLevel;
    }

    /**
     * @return the parentAreaCode
     */
    public String getParentAreaCode() {
        return ParentAreaCode;
    }

    /**
     * @param parentAreaCode the parentAreaCode to set
     */
    public void setParentAreaCode(String parentAreaCode) {
        ParentAreaCode = parentAreaCode;
    }

    @Override
    public String toString() {
        return "AreaEntity [AreaCode=" + AreaCode + ", AreaLevel=" + AreaLevel + ", AreaName=" + AreaName
                + ", ParentAreaCode=" + ParentAreaCode + "]";
    }

    
}