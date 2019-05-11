/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-30 16:57:42 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 22:33:54
 */

package com.myproject.findbook.entity.book;

import java.math.BigDecimal;
import java.security.Timestamp;

public class BookBaseInfoEntity {

    private int No ;
    private String Name;
    private String Author;
    private BigDecimal Price;   //价格
    private String People;
    private String BookContent;

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
     * @return the name
     */
    public String getName() {
        return Name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        Name = name;
    }

    /**
     * @return the author
     */
    public String getAuthor() {
        return Author;
    }

    /**
     * @param author the author to set
     */
    public void setAuthor(String author) {
        Author = author;
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
     * @return the people
     */
    public String getPeople() {
        return People;
    }

    /**
     * @param people the people to set
     */
    public void setPeople(String people) {
        People = people;
    }

    /**
     * @return the bookContent
     */
    public String getBookContent() {
        return BookContent;
    }

    /**
     * @param bookContent the bookContent to set
     */
    public void setBookContent(String bookContent) {
        BookContent = bookContent;
    }

    @Override
    public String toString() {
        return "BookBaseInfoEntity [Author=" + Author + ", BookContent=" + BookContent + ", Name=" + Name + ", No=" + No
                + ", People=" + People + ", Price=" + Price + "]";
    }

   

        
}