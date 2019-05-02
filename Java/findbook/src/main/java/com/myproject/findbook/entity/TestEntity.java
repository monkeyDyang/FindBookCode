/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-02 11:18:42 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 11:20:14
 */

package com.myproject.findbook.entity;

/**
 * TestEntity
 */
public class TestEntity {

    private int testNo;
    private String testName;
	/**
	 * @return the testNo
	 */
	public int getTestNo() {
		return testNo;
	}
	/**
	 * @param testNo the testNo to set
	 */
	public void setTestNo(int testNo) {
		this.testNo = testNo;
	}
	/**
	 * @return the testName
	 */
	public String getTestName() {
		return testName;
	}
	/**
	 * @param testName the testName to set
	 */
	public void setTestName(String testName) {
		this.testName = testName;
	}

    @Override
    public String toString() {
        return "TestEntity [testName=" + testName + ", testNo=" + testNo + "]";
    }

}