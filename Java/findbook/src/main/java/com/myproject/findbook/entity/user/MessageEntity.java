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
    private int dislike;
    private int tower;
    private int floor;
    private Timestamp CreateDate;
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
     * @return the dislike
     */
    public int getDislike() {
        return dislike;
    }

    /**
     * @param dislike the dislike to set
     */
    public void setDislike(int dislike) {
        this.dislike = dislike;
    }

    /**
     * @return the tower
     */
    public int getTower() {
        return tower;
    }

    /**
     * @param tower the tower to set
     */
    public void setTower(int tower) {
        this.tower = tower;
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

    @Override
    public String toString() {
        return "MessageEntity [BackUp1=" + BackUp1 + ", BackUp2=" + BackUp2 + ", BackUp3=" + BackUp3 + ", BackUp4="
                + BackUp4 + ", BackUp5=" + BackUp5 + ", Content=" + Content + ", CreateDate=" + CreateDate + ", No="
                + No + ", User_No=" + User_No + ", dislike=" + dislike + ", floor=" + floor + ", like=" + like
                + ", tower=" + tower + "]";
    }
}