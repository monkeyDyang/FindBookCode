# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html
"""
/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-11 15:14:17 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-04-11 16:29:46
 */
"""
import sys
sys.path.append(r'F:/毕业/毕业设计/源代码/FindBook/Python/Spider/Spiderman/')
from scrapy import Request
import pymysql
import database as db
from items import BaseInfo, PriceHistory,BookURL, Test

cursor = db.connection.cursor()

class SpidermanPipeline(object):

    """
        keys    ————键
        values  ————值
        Table   ————表名
    """
    def BaseInsert(self,keys,values,Table):
        fields = ','.join(keys)
        temp = ','.join(['%s'] * len(keys))
        sql = 'insert into %s (%s) values (%s)' % (Table,fields, temp)
        cursor.execute(sql, values)
        return db.connection.commit()

    """
        keys    ————键
        values  ————值
        Table   ————表名
        Key     ————关键字段
        Value   ————关键值
    """
    def BaseUpdate(self,keys,values,Table,Key,Value):
        fields = ['%s=' % i + '%s' for i in keys]
        sql = 'UPDATE %s SET %s WHERE %s=%s' % (Table,','.join(fields), Key, Value)
        # print('****************************')
        # print(sql)
        cursor.execute(sql, tuple(i.strip() for i in values))
        return db.connection.commit()

    # FB_Book_BaseInfo  
    def Get_BaseInfo(self,item):
        # 根据书名Name从数据库中查询是否已存在
        sql = 'select No from fb_book_baseinfo where Name = %s ' % ("'"+item['Name']+"'")
        cursor.execute(sql)
        return cursor.fetchone()
    def Save_BaseInfo(self, item):
        keys = item.keys()
        values = tuple(item.values())
        table = 'fb_book_baseinfo'
        return self.BaseInsert(keys,values,table)

    # FB_Book_PriceHistory  
    def Get_PriceHistory(self):
        pass  
    def Save_PriceHistory(self,item):
        # print(item)
        keys = item.keys()
        values = tuple(item.values())
        table = 'fb_book_pricehistory'
        return self.BaseInsert(keys,values,table)

    # FB_Book_URL 根据书名和编码类型查找是否已存在相应数据
    def Get_URL(self,item):
        sql = 'select No from fb_book_url where Book_No = %s and Code = %s' % (item['Book_No'],item['Code']) #("'"+item['Book_No']+"'",item['Code'])
        cursor.execute(sql) 
        return cursor.fetchone()
    def Save_URL(self,item):
        keys = item.keys()
        values = tuple(item.values())
        table = 'fb_book_url'
        return self.BaseInsert(keys,values,table)
    def Update_URL(self,item,no):
        keys = item.keys()
        values = tuple(item.values())
        # 关键数据
        Table = 'fb_book_url'
        Key = 'No'
        Value = no
        return self.BaseUpdate(keys,values,Table,Key,Value)

    # Test
    def Get_test(self,item):
        sql = 'SELECT testNo FROM test WHERE testNo=%s' % item['testNo']
        cursor.execute(sql)
        return cursor.fetchone()
    def Save_test(self, item):
        keys = item.keys()
        values = tuple(item.values())
        Table = "test"
        return self.BaseInsert(keys,values,Table)
    def Update_test(self,item):
        keys = item.keys()
        values = tuple(item.values())
        # 关键数据
        Table = 'test'
        Key = 'testNo'
        Value = item[Key]
        return self.BaseUpdate(keys,values,Table,Key,Value)

    # 进程控制
    def process_item(self, item, spider):
        
        # BaseInfo
        if isinstance(item, BaseInfo):
            print(item)
            exist = self.Get_BaseInfo(item)
            if not exist:
                try:
                    self.Save_BaseInfo(item)
                    print('Save_Success!!!!!!!')
                except Exception as e:
                    print(item)
                    print(e)
            else:
                # print(type(No))   获取的No 是 dict
                no = exist['No']
                self.Update_URL(item,no) #如果存在则 更新数据
                print('Update_Success!!!!!!!')
        # PriceHistory
        elif  isinstance(item, PriceHistory):
            self.Save_PriceHistory(item)
            print('Save_Success!!!!!!!')
        # BookURL
        elif  isinstance(item, BookURL):
            
            exist = self.Get_URL(item)
            if not exist:
                try:
                    self.Save_URL(item) #如果不存在则 新增一条数据
                    print('Save_Success!!!!!!!')
                except Exception as e:
                    print(item)
                    print(e)
            else:
                # print(type(No))   获取的No 是 dict
                no = exist['No']
                self.Update_URL(item,no) #如果存在则 更新数据
                print('Update_Success!!!!!!!')
        # Test
        elif  isinstance(item, Test):
            exist = self.Get_test(item)
            if not exist:
                try:
                    self.Save_test(item)
                    print('Save_Success!!!!!!!')
                except Exception as e:
                    print(item)
                    print(e)
            else:
                self.Update_test(item)
                print('Update_Success!!!!!!!')

        return item

