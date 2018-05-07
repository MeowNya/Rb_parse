#! /usr/bin/env ruby


require 'open-uri'
require 'nokogiri'


url = 'https://wallpaper.mob.org.ru/'

html_text = open(url)
doc = Nokogiri::HTML(html_text)

url_list = []

doc.css('.picture-list .bg-image > img').each do |img|
  # puts img['src'] + ' ' + img['title']
  url_img = img['src']
  url_img = URI::join(url, url_img).to_s
  p url_img

  url_list << url_img
end

p url_list
