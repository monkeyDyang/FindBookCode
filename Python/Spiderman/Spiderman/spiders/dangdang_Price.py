# -*- coding: utf-8 -*-
import sys
sys.path.append(r'F:/毕业/毕业设计/源代码/FindBook/Python/Spiderman/Spiderman/')
# sys.setdefaultencoding("utf-8")

from items import PriceHistory
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
    当当商品价格
"""
class dangdangSpider(Spider):
    name = 'dangdangPrice'
    allowed_domains = ["dangdang.com"]

    def __init__(self, arg1=None,*args, **kwargs):
        
        self.key = arg1
        self.start_urls = ['http://search.dangdang.com/?key=%s' % arg1]
        self.start_requests()
        

    # 启动函数 -a 传递参数
    def start_requests(self):
        # 随机构造user-agent
        headers = CommonClass().headers_Random()
        # url = 'http://search.dangdang.com/?key='
        # 如果 self.tag 存在返回 tag 本身的值，不存在返回 None
        # tag = getattr(self, 'test', None)
        # print(tag+'/////////////////')
        # if tag is not None:
            # url = url + tag
        # url 由web端传入，传入一个 书名
        yield scrapy.Request(url= self.start_urls[0],headers = headers)    # 爬取到的页面提交给parse方法处理


    """
    #  解析并获取需要的数据
    """
    def get_Price(self, pricehistory, response):
        
        # 从bookbaseinfo表中找到No
        tag = self.key
        sql = 'select No from fb_book_baseinfo where Name like %s ' % ("'%"+tag+"%'")
        print(sql)
        cursor.execute(sql) 
        result = cursor.fetchone()
        No = result['No']
        pricehistory['Book_No'] = No #getattr(self, 'name', None) #书名
        # Price
        Suop = BeautifulSoup(response.body,'lxml')
        line1 = Suop.find('li',class_='line1')
        p = line1.find('span',class_='search_now_price')
        price = p.get_text()
        if price:
            price = price.split('¥')[1]
            pricehistory['Price'] = price
        
        discount = line1.find('span',class_='search_discount') 
        pricehistory['DisCount'] = discount.get_text()
        pricehistory['Code'] = '1001'  #当当商品价格 1001
        pricehistory['CreateDate'] = CommonClass().getSystemTime()
        return pricehistory


    def parse(self, response):
        if 404 == response.status:
            print(response.url[:5000])
            return False
        else:
            # 获取解析结果，封装到BookURL中
            pricehistory = self.get_Price(PriceHistory(),response)
            return pricehistory

# if __name__ == "__main__":
#     from scrapy import cmdline
#     args = 'scrapy crawl dangdangPrice -a name=Springboot'.split()
#     cmdline.execute(args)