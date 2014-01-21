# encoding: UTF-8
require "rubygems"
require "watir-webdriver"
browser = Watir::Browser.new:ff
browser.goto "localhost/phpproject"

browser.a(:text => "logout").click
puts browser.title
puts browser.text.include? 'logged out'
browser.close
