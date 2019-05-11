# -*- coding: utf-8 -*-
import sys
sys.path.append(r'F:/毕业/毕业设计/源代码/FindBook/Python/Spiderman/Spiderman/')

from items import BookURL
from CommonClass import CommonClass
import database as db
import string
import random
import datetime
import scrapy
from scrapy import Request, Spider
from bs4 import BeautifulSoup
cursor = db.connection.cursor()
"""
    当当URL爬虫
"""
class dangdangSpider(Spider):
    name = 'dangdangURL'
    allowed_domains = ["dangdang.com"]

    def __init__(self, arg1=None,*args, **kwargs):
        
        self.key = arg1
        # self.start_urls = ['http://search.dangdang.com/?key=%s' % arg1]
        self.start_requests()    

    # 启动函数 -a 传递参数
    def start_requests(self):
        # 随机构造user-agent
        headers = CommonClass().headers_Random()
        
        url = 'http://search.dangdang.com/?key='
        # 如果 self.tag 存在返回 tag 本身的值，不存在返回 None
        tag = self.key
        if tag is not None:
            url = url + tag
        # url 由web端传入，传入一个 书名
        yield scrapy.Request(url= url,headers = headers)    # 爬取到的页面提交给parse方法处理

    """
    #  解析并获取需要的数据
    """
    def get_BookURL(self, bookurl, response):
        
        # 从bookbaseinfo表中找到No
        tag = self.key
        sql = 'select No from fb_book_baseinfo where Name like %s ' % ("'%"+tag+"%'")
        cursor.execute(sql) 
        result = cursor.fetchone()
        No = result['No']
        bookurl['Book_No'] = No 
        Suop = BeautifulSoup(response.body,'lxml')
        url =  Suop.find('li',class_='line1').find('a').attrs['href'] 
        if url:
            bookurl['Url'] = url
        bookurl['Code'] = '0002'  #当当URL类型 0002

        return bookurl


    def parse(self, response):
        if 404 == response.status:
            print(response.url[:5000])
            return False
        else:
            # 获取解析结果，封装到BookURL中
            bookurl = self.get_BookURL(BookURL(),response)
            return bookurl
