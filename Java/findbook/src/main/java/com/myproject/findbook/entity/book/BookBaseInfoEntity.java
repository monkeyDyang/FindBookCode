/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-30 16:57:42 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-01 13:22:06
 */

package com.myproject.findbook.entity.book;

import java.math.BigDecimal;
import java.security.Timestamp;

public class BookBaseInfoEntity {

    private int No ;
    private String Name;
    private String Author;
    private BigDecimal Price;   //价格
    private String ISBN;        //索书号
    private BigDecimal Start;
    private BigDecimal Score;
    private int People;
    private String Press;               //出版社
    private Timestamp PublicationDate;  //出版日期
    private String BookContent;
    private String AuthorContent;
    private String Directory;
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
     * @return the iSBN
     */
    public String getISBN() {
        return ISBN;
    }

    /**
     * @param iSBN the iSBN to set
     */
    public void setISBN(String iSBN) {
        ISBN = iSBN;
    }

    /**
     * @return the start
     */
    public BigDecimal getStart() {
        return Start;
    }

    /**
     * @param start the start to set
     */
    public void setStart(BigDecimal start) {
        Start = start;
    }

    /**
     * @return the score
     */
    public BigDecimal getScore() {
        return Score;
    }

    /**
     * @param score the score to set
     */
    public void setScore(BigDecimal score) {
        Score = score;
    }

    /**
     * @return the people
     */
    public int getPeople() {
        return People;
    }

    /**
     * @param people the people to set
     */
    public void setPeople(int people) {
        People = people;
    }

    /**
     * @return the press
     */
    public String getPress() {
        return Press;
    }

    /**
     * @param press the press to set
     */
    public void setPress(String press) {
        Press = press;
    }

    /**
     * @return the publicationDate
     */
    public Timestamp getPublicationDate() {
        return PublicationDate;
    }

    /**
     * @param publicationDate the publicationDate to set
     */
    public void setPublicationDate(Timestamp publicationDate) {
        PublicationDate = publicationDate;
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

    /**
     * @return the authorContent
     */
    public String getAuthorContent() {
        return AuthorContent;
    }

    /**
     * @param authorContent the authorContent to set
     */
    public void setAuthorContent(String authorContent) {
        AuthorContent = authorContent;
    }

    /**
     * @return the directory
     */
    public String getDirectory() {
        return Directory;
    }

    /**
     * @param directory the directory to set
     */
    public void setDirectory(String directory) {
        Directory = directory;
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
        return "BookBaseInfoEntity [Author=" + Author + ", AuthorContent=" + AuthorContent + ", BackUp1=" + BackUp1
                + ", BackUp2=" + BackUp2 + ", BackUp3=" + BackUp3 + ", BackUp4=" + BackUp4 + ", BackUp5=" + BackUp5
                + ", BookContent=" + BookContent + ", Directory=" + Directory + ", ISBN=" + ISBN + ", Name=" + Name
                + ", No=" + No + ", People=" + People + ", Press=" + Press + ", Price=" + Price + ", PublicationDate="
                + PublicationDate + ", Score=" + Score + ", Start=" + Start + "]";
    }

        
}