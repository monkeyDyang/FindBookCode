"""
/*
 * @Author: mikey.zhaopeng 
 * @Date: 2019-04-05 16:06:05 
 * @Last Modified by: mikey.zhaopeng
 * @Last Modified time: 2019-04-05 16:53:12
 */
"""

import pymysql

MYSQL_DB = 'findbook'
MYSQL_USER = 'root'
MYSQL_PASS = '123456'
MYSQL_HOST = '118.25.195.70'

connection = pymysql.connect(host=MYSQL_HOST, 
                             user=MYSQL_USER,
                             password=MYSQL_PASS, 
                             db=MYSQL_DB,
                             charset='utf8',
                             cursorclass=pymysql.cursors.DictCursor)
