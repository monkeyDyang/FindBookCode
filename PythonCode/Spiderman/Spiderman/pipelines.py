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

from scrapy import Request

import FindBookCode.PythonCode.Spiderman.Spiderman.database as db
from FindBookCode.PythonCode.Spiderman.Spiderman.items import BaseInfo, PriceHistory,BookURL, Test

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
        cursor.execute(sql, tuple(i.strip() for i in values))
        return db.connection.commit()

    # FB_Book_BaseInfo  
    def Get_BaseInfo(self,item):
        # 根据书名Name从数据库中查询是否已存在
        sql = 'select Name from FB_Book_BaseInfo where Name = %s ' % item['Name']
        cursor.execute(sql)
        return cursor.fetchone()
    def Save_BaseInfo(self, item):
        keys = item.keys()
        values = tuple(item.values())
        table = 'FB_Book_BaseInfo'
        return self.BaseInsert(keys,values,table)

    # FB_Book_PriceHistory  
    def Get_PriceHistory(self):
        pass  
    def Save_PriceHistory(self,item):
        keys = item.keys()
        values = tuple(item.values())
        table = 'FB_Book_PriceHistory'
        return self.BaseInsert(keys,values,table)

    # FB_Book_URL
    def Get_URL(self):
        pass
    def Save_URL(self,item):
        keys = item.keys()
        values = tuple(item.values())
        table = 'FB_Book_URL'
        return self.BaseInsert(keys,values,table)

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
            exist = self.Get_BaseInfo(item)
            if not exist:
                try:
                    self.Save_BaseInfo(item)
                except Exception as e:
                    print(item)
                    print(e)
        # PriceHistory
        elif  isinstance(item, PriceHistory):
            self.Save_PriceHistory(item)
            print('Save_Success!!!!!!!')
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

