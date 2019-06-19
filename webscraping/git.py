import requests
from bs4 import BeautifulSoup
import csv

page = requests.get('https://www.amazon.in/s?bbn=9899945031&rh=n%3A976389031%2Cn%3A%211318447031%2Cn%3A%211318449031%2Cn%3A9899945031%2Cn%3A1318158031&dc&fst=as%3Aoff&qid=1559280059&rnid=976390031&ref=lp_9899945031_nr_n_0')
soup = BeautifulSoup(page.text, 'html.parser')
product = soup.find(class_="s-result-list")

product_list = product.find_all(class_='a-column a-span12 a-text-center')
print "Product List"
print((product_list))

file_name = "amazon.csv"
f = csv.writer(open(file_name, 'w'))

print
print "Product Name"
for product in product_list:
    product_name = product.find('a').image
    print product_name
