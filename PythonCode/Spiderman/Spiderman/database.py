"""
/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-05 16:06:05 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-04-05 18:47:57
 */
"""

import pymysql
import pymysql.cursors

MYSQL_DB = 'findbook'
MYSQL_USER = 'root'
MYSQL_PASS = '123456'
MYSQL_HOST = '118.25.195.70'

connection = pymysql.connect(host=MYSQL_HOST, 
                             port = 3306,
                             user=MYSQL_USER,
                             password=MYSQL_PASS, 
                             db=MYSQL_DB,
                             charset='utf8',
                             cursorclass=pymysql.cursors.DictCursor)


# DBConnection_test
"""
cursors = connection.cursor()
sql = 'insert into test value (1,"ss")'
cursors.execute(sql)
connection.commit()
print("********")
print(cursors.rowcount)
print("********")
cursors.close()
connection.close()
"""
# 测试结果 成功向 test表插入一条数据，返回1