/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-30 23:28:11 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-01 00:05:24
 */
package com.myproject.findbook.entity.system;

import java.security.Timestamp;

/**
 * MenuEntity
 */
public class MenuEntity {

    private int No;
    private String ParentCode;
    private String MenuName;
    private String Url;
    private String IconClass;
    private String IconUrl;
    private String MenuSeq;
    private String Description;
    private boolean isVisible;
    private boolean isEnable;
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
	 * @return the parentCode
	 */
	public String getParentCode() {
		return ParentCode;
	}
	/**
	 * @param parentCode the parentCode to set
	 */
	public void setParentCode(String parentCode) {
		ParentCode = parentCode;
	}
	/**
	 * @return the menuName
	 */
	public String getMenuName() {
		return MenuName;
	}
	/**
	 * @param menuName the menuName to set
	 */
	public void setMenuName(String menuName) {
		MenuName = menuName;
	}
	/**
	 * @return the url
	 */
	public String getUrl() {
		return Url;
	}
	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		Url = url;
	}
	/**
	 * @return the iconClass
	 */
	public String getIconClass() {
		return IconClass;
	}
	/**
	 * @param iconClass the iconClass to set
	 */
	public void setIconClass(String iconClass) {
		IconClass = iconClass;
	}
	/**
	 * @return the iconUrl
	 */
	public String getIconUrl() {
		return IconUrl;
	}
	/**
	 * @param iconUrl the iconUrl to set
	 */
	public void setIconUrl(String iconUrl) {
		IconUrl = iconUrl;
	}
	/**
	 * @return the menuSeq
	 */
	public String getMenuSeq() {
		return MenuSeq;
	}
	/**
	 * @param menuSeq the menuSeq to set
	 */
	public void setMenuSeq(String menuSeq) {
		MenuSeq = menuSeq;
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
	 * @return the isVisible
	 */
	public boolean isVisible() {
		return isVisible;
	}
	/**
	 * @param isVisible the isVisible to set
	 */
	public void setVisible(boolean isVisible) {
		this.isVisible = isVisible;
	}
	/**
	 * @return the isEnable
	 */
	public boolean isEnable() {
		return isEnable;
	}
	/**
	 * @param isEnable the isEnable to set
	 */
	public void setEnable(boolean isEnable) {
		this.isEnable = isEnable;
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
}