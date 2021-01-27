require 'pry'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(html)

html = open("https://flatironschool.com/")

doc.css(".site-header__hero__headline")
courses = doc.css(".tout__label.heading.heading--level-4")[0]
binding.pry
courses.each do |course|
    puts course.text.strip
end