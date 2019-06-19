# -*- coding: utf-8 -*-
import scrapy
from ..items import WebscrapingItem

class AmazonSpider(scrapy.Spider):
    name = 'amazon'
    allowed_domains = ['amazon.com']
    start_urls = ['https://www.amazon.in/s?bbn=9899945031&rh=n%3A976389031%2Cn%3A%211318447031%2Cn%3A%211318449031%2Cn%3A9899945031%2Cn%3A1318158031&dc&fst=as%3Aoff&qid=1559280059&rnid=976390031&ref=lp_9899945031_nr_n_0']

    def parse(self, response):
        items = WebscrapingItem()
        product_name=response.css('.a-color-base.a-text-normal::text').extract()
        author=response.css('.a-color-secondary .a-size-base.a-link-normal').css('::text').extract()
        price=response.css('.a-spacing-top-small .a-price-whole').css('::text').extract()
        image=response.css('.s-image::attr(src)').extract()
        pass

        items['product_name'] = product_name
        items['author'] = author
        items['price'] = price
        items['image'] = image
        yield items
