# -*- coding: utf-8 -*-
import sys
sys.path.append(r'F:/毕业/毕业设计/源代码/FindBook/Python/Spiderman/Spiderman/')

from items import BaseInfo
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
    BaseInfo爬取
"""
class dangdangSpider(Spider):
    name = 'dangdangInfo'
    allowed_domains = ["dangdang.com"]

    def __init__(self, arg1=None,*args, **kwargs):
        
        self.key = arg1
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
        yield scrapy.Request(url= url,headers = headers)    # 爬取到的页面提交给parse方法处理

    """
    #  解析并获取需要的数据
    """
    def get_Info(self, baseinfo, response):
        
        Suop = BeautifulSoup(response.body,'lxml')
        
        line1 = Suop.find('li',class_='line1')
        name = line1.find('a').attrs['title']
        # if not name:
        baseinfo['Name'] = name
                
        author = line1.find('p',class_='search_book_author')
        authorname = author.find('a').attrs['title']
        # if not authorname:
        baseinfo['Author'] = authorname
        
        price = line1.find('p',class_='price')
        num = price.find('span',class_='search_pre_price').get_text()
        num = num.split('¥')[1]
        # if not num:
        baseinfo['Price'] = num
        
        people = line1.find('p',class_='search_star_line')
        peoples = people.find('a',class_='search_comment_num').get_text()
        # if not peoples:
        baseinfo['People'] = peoples

        content =  line1.find('p',class_='detail').get_text()
        # if not content:
        baseinfo['BookContent'] = content

        return baseinfo


    def parse(self, response):
        if 404 == response.status:
            print(response.url[:5000])
            return False
        else:
            # 获取解析结果，封装到BookURL中
            baseinfo = self.get_Info(BaseInfo(),response)
            return baseinfo
