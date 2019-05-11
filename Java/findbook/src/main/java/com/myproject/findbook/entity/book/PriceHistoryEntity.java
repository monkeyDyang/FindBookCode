/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-30 21:07:48 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:04:56
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
    private String DisCount;
    private Timestamp CreateDate;
    private String Code;

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
    public String getDisCount() {
        return DisCount;
    }

    /**
     * @param disCount the disCount to set
     */
    public void setDisCount(String disCount) {
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

    @Override
    public String toString() {
        return "PriceHistoryEntity [Book_No=" + Book_No + ", Code=" + Code + ", CreateDate=" + CreateDate
                + ", DisCount=" + DisCount + ", No=" + No + ", Price=" + Price + "]";
    }



}