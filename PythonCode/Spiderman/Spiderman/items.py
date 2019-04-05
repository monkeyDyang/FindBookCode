# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy
from scrapy import Item,Field

class SpidermanItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    pass


# Book_BaseInfo
class BookBaseInfo(Item):
    No = Field()
    imgURL = Field()
    Name = Field()
    Author = Field()
    Price = Field()
    ISBN = Field()
    Start = Field()
    Score = Field()
    People = Field()
    # 出版社
    Press = Field()
    # 出版日期
    PublicationData = Field()
    BookContent = Field()
    AuthorContent = Field()
    Directory = Field()
    BackUp1 = Field()
    BackUp2 = Field()
    BackUp3 = Field()

# Book_PriceHistory
class PriceHistory(Item):
    No = Field()
    Book_No = Field()
    Seller_No = Field()
    Price = Field()
    Discount = Field()
    Createtime = Field()
    # 对应网站商品链接地址
    URL = Field()
    BackUp1 = Field()
    BackUp2 = Field()
    BackUp3 = Field()