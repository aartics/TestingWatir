# encoding: UTF-8
require "rubygems"
require "watir-webdriver"
browser = Watir::Browser.new:ff
browser.goto "localhost/phpproject"

browser.a(:text => "projects").click
puts browser.title
browser.a(:text => "here").click
browser.text_field(:name => "username").set "Userabc"
browser.text_field(:name => "password").set "789"
browser.button(:value => "login").click
puts browser.text.include? 'please try again'
browser.close
