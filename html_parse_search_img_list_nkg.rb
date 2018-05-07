#! /usr/bin/env ruby


require 'open-uri'
require 'nokogiri'


html_text = open('https://wallpaper.mob.org.ru/')
# html_text = html_text.read()
doc = Nokogiri::HTML(html_text)
doc.css('.picture-list .bg-image > img').each do |img|
  puts img['src'] + ' ' + img['title']
end