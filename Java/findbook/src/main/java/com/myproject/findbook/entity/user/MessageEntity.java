/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-05-01 00:05:36 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:06:42
 */
package com.myproject.findbook.entity.user;

import java.security.Timestamp;

/**
 * MessageEntity
 */
public class MessageEntity {

    private int No;
    private int User_No;
    private String Content;
    private int like;
    private int floor;
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
     * @return the like
     */
    public int getLike() {
        return like;
    }

    /**
     * @param like the like to set
     */
    public void setLike(int like) {
        this.like = like;
    }

    /**
     * @return the floor
     */
    public int getFloor() {
        return floor;
    }

    /**
     * @param floor the floor to set
     */
    public void setFloor(int floor) {
        this.floor = floor;
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
        return "MessageEntity [Content=" + Content + ", CreateDate=" + CreateDate + ", No=" + No + ", User_No="
                + User_No + ", floor=" + floor + ", like=" + like + "]";
    }

 
}