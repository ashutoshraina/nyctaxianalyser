# noinspection PyUnresolvedReferences
from FileUtil import csv_reader
# noinspection PyUnresolvedReferences
from FileUtil import xml_reader

yellow_data = '../data/yellow_tripdata_2016-01.csv'
green_data = '../data/green_tripdata_2016-01.csv'
holidays = '../data/holidays.csv'
holidays_xml = '../data/holidays.xml'
weather_xml = '../data/weather.html'

csv_reader(yellow_data, '', 3)
csv_reader(green_data, '', 3)
csv_reader(holidays, '', 3)

xml_reader(holidays_xml)
xml_reader(weather_xml)
