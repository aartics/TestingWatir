# encoding: UTF-8
require "rubygems"
require "watir-webdriver"
browser = Watir::Browser.new:ff
browser.goto "localhost/phpproject"

puts browser.url
puts browser.text.include? 'projects'
puts browser.text.include? 'users'
puts browser.text.include? 'categories'
puts browser.text.include? 'status'
puts browser.text.include? 'logout'

sleep 5;
browser.close
