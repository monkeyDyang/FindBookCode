/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-30 21:07:48 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-04-30 21:12:05
 */

package com.myproject.findbook.entity.book;

import java.math.BigDecimal;
import java.security.Timestamp;

/**
 * PriceHistoryEntity
 */
public class PriceHistoryEntity {

    private int No;
    private int Book_No;
    private BigDecimal Price;
    private BigDecimal DisCount;
    private Timestamp CreateDate;
    private String Code;
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
     * @return the book_No
     */
    public int getBook_No() {
        return Book_No;
    }

    /**
     * @param book_No the book_No to set
     */
    public void setBook_No(int book_No) {
        Book_No = book_No;
    }

    /**
     * @return the price
     */
    public BigDecimal getPrice() {
        return Price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(BigDecimal price) {
        Price = price;
    }

    /**
     * @return the disCount
     */
    public BigDecimal getDisCount() {
        return DisCount;
    }

    /**
     * @param disCount the disCount to set
     */
    public void setDisCount(BigDecimal disCount) {
        DisCount = disCount;
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