# -*- coding: utf-8 -*-
import sys
sys.path.append(r'F:/毕业/毕业设计/源代码/FindBook/Python/Spider/Spiderman/')
# sys.path.append(r'F:/毕业/毕业设计/源代码/FindBook/Python/Spider/Spiderman/spiders')
# sys.path.append(r'../Spiderman/')

from items import PriceHistory
import CommonClass as common
import database as db
# from pipelines import SpidermanPipeline as dao
import string
import random
import datetime
import scrapy
from scrapy import Request, Spider
from bs4 import BeautifulSoup

cursor = db.connection.cursor()

"""
    当当商品详情
"""
class doubanSpider(Spider):
    name = 'dangdangPrice'
    allowed_domains = ["dangdang.com"]

    # 启动函数 -a 传递参数
    def start_requests(self):
        # 随机构造user-agent
        headers = self.headers_Random() 
        url = 'http://search.dangdang.com/?key='
        # 如果 self.tag 存在返回 tag 本身的值，不存在返回 None
        tag = getattr(self, 'name', None)
        if tag is not None:
            url = url + tag
        # url 由web端传入，传入一个 书名
        yield scrapy.Request(url= url,headers = headers)    # 爬取到的页面提交给parse方法处理


    """
    #  解析并获取需要的数据
    """
    def get_Price(self, pricehistory, response):
        
        # 从bookbaseinfo表中找到No
        tag = getattr(self, 'name', None)
        sql = 'select No from fb_book_baseinfo where Name like %s ' % ("'%"+tag+"%'")
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
        pricehistory['CreateDate'] = self.getSystemTime()
        return pricehistory


    def parse(self, response):
        if 404 == response.status:
            print(response.url[:5000])
            return False
        else:
            # 获取解析结果，封装到BookURL中
            pricehistory = self.get_Price(PriceHistory(),response)
            return pricehistory


    # 构造随机选取user-agent的函数
    def headers_Random(self):
        lists = self.UAPool()
        headers = {'User-Agent':random.choice(lists)}
        return headers

    # 构造user-agents池
    def UAPool(self):
        userAgents = [
            "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; AcooBrowser; .NET CLR 1.1.4322; .NET CLR 2.0.50727)",
            "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.0; Acoo Browser; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.04506)",
            "Mozilla/4.0 (compatible; MSIE 7.0; AOL 9.5; AOLBuild 4337.35; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)",
            "Mozilla/5.0 (Windows; U; MSIE 9.0; Windows NT 9.0; en-US)",
            "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Win64; x64; Trident/5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET CLR 2.0.50727; Media Center PC 6.0)",
            "Mozilla/5.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; .NET CLR 1.0.3705; .NET CLR 1.1.4322)",
            "Mozilla/4.0 (compatible; MSIE 7.0b; Windows NT 5.2; .NET CLR 1.1.4322; .NET CLR 2.0.50727; InfoPath.2; .NET CLR 3.0.04506.30)",
            "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN) AppleWebKit/523.15 (KHTML, like Gecko, Safari/419.3) Arora/0.3 (Change: 287 c9dfb30)",
            "Mozilla/5.0 (X11; U; Linux; en-US) AppleWebKit/527+ (KHTML, like Gecko, Safari/419.3) Arora/0.6",
            "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.2pre) Gecko/20070215 K-Ninja/2.1.1",
            "Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.9) Gecko/20080705 Firefox/3.0 Kapiko/3.0",
            "Mozilla/5.0 (X11; Linux i686; U;) Gecko/20070322 Kazehakase/0.4.5",
            "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.8) Gecko Fedora/1.9.0.8-1.fc10 Kazehakase/0.5.6",
            "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.11 (KHTML, like Gecko) Chrome/17.0.963.56 Safari/535.11",
            "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.20 (KHTML, like Gecko) Chrome/19.0.1036.7 Safari/535.20",
            "Opera/9.80 (Macintosh; Intel Mac OS X 10.6.8; U; fr) Presto/2.9.168 Version/11.52",]
        return userAgents


    def getSystemTime(self):
        now_time = datetime.datetime.now().strftime('%Y-%m-%d')
        return now_time
