/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-30 23:26:20 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-01 00:01:32
 */

package com.myproject.findbook.entity.system;

/**
 * IconEntity
 */
public class IconEntity {

    private int No;
    private String IconCss;
    private int Sort;

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
     * @return the iconCss
     */
    public String getIconCss() {
        return IconCss;
    }

    /**
     * @param iconCss the iconCss to set
     */
    public void setIconCss(String iconCss) {
        IconCss = iconCss;
    }

    /**
     * @return the sort
     */
    public int getSort() {
        return Sort;
    }

    /**
     * @param sort the sort to set
     */
    public void setSort(int sort) {
        Sort = sort;
    }
}