#Project Name:  PHP Based Website - Testing Project
#Description:
#Author:  Aarti Sharma
#Test Suite Id: n/a
#Test Suite Name: PHP Project - Project verification
#Test Cases Summary: Project verification Test Case
#Test Case Description: <Some Description>
#created Date: <mm/dd/yyyy>
#Updated Date: <mm/dd/yyyy>
######################################################################
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
browser.a(:text => "projects").click

browser.a(:text => "-New Project-",:index=>2).click;
sleep 10;
puts browser.url
browser.close
