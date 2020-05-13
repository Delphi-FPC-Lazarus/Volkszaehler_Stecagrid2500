#!/bin/sh

cd /home/pi
rm measurements.xml
rm measurements.sql

wget http://192.168.1.251/measurements.xml
python ./measurements.python > measurements.sql
mysql --user=root --password=raspberry --database=volkszaehler < measurements.sql


