# /*
#  * @Author: mikey.zhaopeng 
#  * @Date: 2019-04-05 20:01:33 
#  * @Last Modified by:   mikey.zhaopeng 
#  * @Last Modified time: 2019-04-05 20:01:33 
#  */
# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html

# Dao层

from scrapy import Request

import Spiderman.database as db
from Spiderman.items import BookBaseInfo, PriceHistory, Test

cursor = db.connection.cursor()

class SpidermanPipeline(object):
    def get_test(self,item):
        sql = 'SELECT testNo FROM test WHERE testNo=%s' % item['testNo']
        cursor.execute(sql)
        return cursor.fetchone()

    def save_test(self, item):
        keys = item.keys()
        values = tuple(item.values())
        fields = ','.join(keys)
        temp = ','.join(['%s'] * len(keys))
        sql = 'insert into test (%s) values (%s)' % (fields, temp)  
        cursor.execute(sql, tuple(i.strip() for i in values))
        return db.connection.commit()

    def process_item(self, item, spider):
        if  isinstance(item, Test):
            '''
            Test
            '''
            # self.save_test(item)
            exist = self.get_test(item)
            if not exist:
                try:
                    self.save_test(item)
                except Exception as e:
                    print(item)
                    print(e)
            # else:
            #     self.update_book_meta(item)
        return item

# if __name__ == "__main__":
#     sql = 'select * from test where testNo = 1'
#     cursor.execute(sql)
#     print(cursor.fetchone())
