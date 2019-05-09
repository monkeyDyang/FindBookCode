# -*- coding: utf-8 -*-
import sys
import os
fpath = os.path.abspath(os.path.join(os.path.dirname(__file__),".."))
ffpath = os.path.abspath(os.path.join(fpath,".."))
sys.path.append(ffpath)
# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

from scrapy import Item,Field

# FB_Book_BaseInfo
class BaseInfo(Item):
    # No = Field()
    imgURL = Field()
    Name = Field()
    Author = Field()
    Price = Field()
    # Isbn = Field() #索书号
    # Start = Field()
    # Score = Field()
    People = Field()
    # Press = Field()# 出版社
    # PublicationData = Field()# 出版日期
    BookContent = Field()#内容简介
    # AuthorContent = Field()# 作者简介
    # Directory = Field()# 目录


# FB_Book_PriceHistory
class PriceHistory(Item):
    # No = Field()
    Book_No = Field()
    Price = Field()
    DisCount = Field()
    CreateDate = Field()
    Code = Field()


# FB_Book_URL
class BookURL(Item):
    # No = Field()
    Book_No = Field()
    Url = Field()
    Code = Field()

# test
class Test(Item):
    testNo = Field()
    testName = Field()