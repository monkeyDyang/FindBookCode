"""
/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-05 17:05:55 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-04-05 18:52:42
 */
"""

import string
import scrapy
import random
import Spiderman.database as db

from Spiderman.items import BookBaseInfo,Test

from scrapy import Request,Spider

cursor = db.connection.cursor()

class doubanSpider(Spider):
    name = 'Douban'
    allowed_domains = ["book.douban.com"]

    # 启动函数
    def start_requests(self):
        headers = self.headersRandom()
        urls = [
        "https://book.douban.com/subject/26340138/"
        # "https://book.douban.com/subject_search?search_text=岛上书店",
        # "https://book.douban.com/subject_search?search_text=爱你就像爱生命",
        # "https://book.douban.com/subject_search?search_text=一个人的朝圣",
        ]
        for url in urls:
            yield scrapy.Request(url= url,headers = headers)    # 爬取到的页面提交给parse方法处理


    # 构造随机选取user-agent的函数
    def headersRandom(self):
        lists = self.UAPool()
        headers = {'User-Agent':random.choice(lists)}       # headers 为dict
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

    def get_No(self, test, response):
        test['testNo'] =  '2' 
        #response.url[32:-1]
        test['testName'] = '岛上书店'
        return test

    def parse(self, response):
        if 35000 > len(response.body):
            print(response.body)
            print(response.url)
        elif 404 == response.status:
            print(response.url)
        else:
            test = Test()
            return test

