"""
/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-05 17:05:55 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-05-02 17:34:12
 */
"""

import string
import scrapy

import FindBookCode.PythonCode.Spiderman.Spiderman.database as db
import FindBookCode.PythonCode.Spiderman.Spiderman.spiders.HeaderRandom as Header
from FindBookCode.PythonCode.Spiderman.Spiderman.items import BaseInfo,PriceHistory,BookURL,Test

from scrapy import Request,Spider

cursor = db.connection.cursor()

"""
    豆瓣搜索爬虫————从搜索结果页面爬取链接，写入URL表
"""
class doubanSpider(Spider):
    name = 'Douban'
    allowed_domains = ["book.douban.com"]

    # 启动函数
    def start_requests(self):
        # 随机构造user-agent
        headers = Header.headersRandom()
        
        # url 由web端传入，传入一个 书名
        urls = [
        # "https://book.douban.com/subject/26340138/"
        "https://book.douban.com/subject_search?search_text=岛上书店",
        # "https://book.douban.com/subject_search?search_text=爱你就像爱生命",
        # "https://book.douban.com/subject_search?search_text=一个人的朝圣",
        ]
        for url in urls:
            yield scrapy.Request(url= url,headers = headers)    # 爬取到的页面提交给parse方法处理

    """
    #  解析并获取需要的数据
    """
    def get_BookURL(self, bookurl,response):
        bookurl['No'] = self.get_URL()


    def get_URL(self, response):
        # regx = '//a[parent::span[child::span[text()=" 作者"]]]/text()'
        # regx = '//title/text()'
        # test['testNo'] =  '5' #response.url[32:-1]
        # test['testName'] = response.xpath(regx).extract()
        # testName = response.xpath(regx).extract()
        # if testName:
        #     test['testName'] = '/'.join((i.strip() for i in testName))
        return test










    def parse(self, response):
        if 404 == response.status:
            print(response.url)
        else:
            # 获取解析结果，封装到BookURL中
            bookurl = self.get_BookURL(BookURL(),response)
            return bookurl

