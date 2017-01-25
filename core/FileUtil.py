import csv
import itertools
import xml.etree.ElementTree as ET


def csv_reader(file, newline, rows):
    with open(file, newline=newline) as f:
        reader = csv.reader(f)
        for row in itertools.islice(reader, rows):
            print(row)
    print("\n")


def xml_reader(file):
    tree = ET.parse(file)
    root = tree.getroot()
    for child in root:
        for grandchild in child:
            print(grandchild.text)
    print("\n")