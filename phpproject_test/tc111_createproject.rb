# encoding: UTF-8
require "rubygems"
require "watir-webdriver"
browser = Watir::Browser.new:ff
browser.goto "localhost/phpproject"

browser.a(:text => "projects").click
puts browser.title
browser.a(:text => "here").click
browser.text_field(:name => "username").set "User123"
browser.text_field(:name => "password").set "a"
browser.button(:value => "login").click
puts browser.text.include? 'successfully logged in'
browser.a(:text => "projects").click
puts browser.url
browser.a(:text => "create a new project").click
puts browser.text.include? '-New Project-'
browser.a(:text => "-New Project-",:index=>1).click
puts browser.url
sleep 10;
browser.close
