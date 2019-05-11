/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-30 21:29:21 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:05:12
 */

package com.myproject.findbook.entity.book;

/**
 * URLEntity
 */
public class URLEntity {

    private int No;
    private int Book_No;
    private String URL;
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
     * @return the uRL
     */
    public String getURL() {
        return URL;
    }

    /**
     * @param uRL the uRL to set
     */
    public void setURL(String uRL) {
        URL = uRL;
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
        return "URLEntity [Book_No=" + Book_No + ", Code=" + Code + ", No=" + No + ", URL=" + URL + "]";
    }

 

}