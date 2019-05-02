# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

from scrapy import Item,Field


# FB_Book_BaseInfo
class BaseInfo(Item):
    # imgURL = Field()
    No = Field()
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
    #内容简介
    BookContent = Field()
    # 作者简介
    AuthorContent = Field()
    # 目录
    Directory = Field()
    BackUp1 = Field()
    BackUp2 = Field()
    BackUp3 = Field()
    BackUp4 = Field()
    BackUp5 = Field()

# FB_Book_PriceHistory
class PriceHistory(Item):
    No = Field()
    Book_No = Field()
    Price = Field()
    DisCount = Field()
    CreateDate = Field()
    Code = Field()
    BackUp1 = Field()
    BackUp2 = Field()
    BackUp3 = Field()
    BackUp4 = Field()
    BackUp5 = Field()

# FB_Book_URL
class BookURL(Item):
    No = Field()
    Book_No = Field()
    URL = Field()
    Code = Field()
    BackUp1 = Field()
    BackUp2 = Field()
    BackUp3 = Field()
    BackUp4 = Field()
    BackUp5 = Field()

# test
class Test(Item):
    testNo = Field()
    testName = Field()