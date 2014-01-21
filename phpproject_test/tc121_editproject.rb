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
sleep 2
browser.a(:text => "projects").click
browser.a(:text => "create a new project").click
browser.a(:text => "-New Project-", :index => 1).click
sleep 2
puts browser.url
browser.text_field(:name => "name").set "Tesla"
browser.text_field(:name => "date").set "20/0/2013"
browser.text_field(:name => "des").set "Electric car"
puts browser.select_list(:name => "cat").options
browser.select_list(:name => "cat").select 'Gears'
browser.text_field(:name => "sort").set '4'
browser.checkbox(:name => "private").set
puts browser.text.include? 'User123'
browser.button(:value => "Update").click
puts browser.url
sleep 3
puts browser.text.include? 'successfully updated'
browser.a(:text => "here").click

browser.close
