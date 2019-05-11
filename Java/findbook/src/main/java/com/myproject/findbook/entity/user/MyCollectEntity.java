/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 00:13:50 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:07:06
 */

package com.myproject.findbook.entity.user;

import java.security.Timestamp;

/**
  * MyCollectEntity
  */
 public class MyCollectEntity {
 
    private int No;
    private int Book_No;
    private int User_No;
    private Timestamp ColloectDate;

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
     * @return the user_No
     */
    public int getUser_No() {
        return User_No;
    }

    /**
     * @param user_No the user_No to set
     */
    public void setUser_No(int user_No) {
        User_No = user_No;
    }

    /**
     * @return the colloectDate
     */
    public Timestamp getColloectDate() {
        return ColloectDate;
    }

    /**
     * @param colloectDate the colloectDate to set
     */
    public void setColloectDate(Timestamp colloectDate) {
        ColloectDate = colloectDate;
    }

 }