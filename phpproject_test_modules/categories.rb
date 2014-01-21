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
puts browser.text.include? 'succesfully logged in'
sleep 2
browser.a(:text => "users").click
browser.a(:text => "create a new user").click
sleep 2
browser.a(:text => "User").click
sleep 2
puts browser.url
browser.text_field(:name => "name").set "User333"
browser.text_field(:name => "password").set "abc"
browser.button(:value => "Update Details").click
puts browser.url
sleep 2
puts browser.text.include? 'User Succesfully Deleted'
browser.a(:text => "here").click
sleep 2
browser.close
