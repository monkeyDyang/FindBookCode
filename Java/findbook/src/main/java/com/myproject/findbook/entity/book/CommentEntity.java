/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-30 20:36:08 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:03:23
 */

package com.myproject.findbook.entity.book;

import java.security.Timestamp;

/**
 * CommentEntity
 */
public class CommentEntity {

    private int No;
    private int Book_NO;
    private String Content;
    private String CreatePerson;
    private Timestamp CreateDate;

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
     * @return the book_NO
     */
    public int getBook_NO() {
        return Book_NO;
    }

    /**
     * @param book_NO the book_NO to set
     */
    public void setBook_NO(int book_NO) {
        Book_NO = book_NO;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return Content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        Content = content;
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

    @Override
    public String toString() {
        return "CommentEntity [Book_NO=" + Book_NO + ", Content=" + Content + ", CreateDate=" + CreateDate
                + ", CreatePerson=" + CreatePerson + ", No=" + No + "]";
    }



 

}