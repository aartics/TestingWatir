module Testmodules

def xinitialize
  $browser = Watir::Browser.new:ff
  $browser.goto "localhost/phpproject"
end

def login
  $browser.a(:text => "projects").click
  puts $browser.title
  $browser.a(:text => "here").click
  $browser.text_field(:name => "username").set "User123"
  $browser.text_field(:name => "password").set "a"
  $browser.button(:value => "login").click
  sleep 1
end

def editproject
  $browser.a(:text => "projects").click
  $browser.a(:text => "create a new project").click
  $browser.a(:text => "-New Project-", :index => 1).click
  sleep 1
  puts $browser.url
  $browser.text_field(:name => "name").set PROP["name"]
  $browser.text_field(:name => "date").set PROP["date"]
  $browser.text_field(:name => "des").set PROP["description"]
  puts $browser.select_list(:name => "cat").options
  $browser.select_list(:name => "cat").select 'Gears'
  $browser.text_field(:name => "sort").set '4'
  $browser.checkbox(:name => "private").set
  puts $browser.text.include? 'User123'
  $browser.button(:value => "Update").click
  sleep 1
  puts $browser.url
end

def usercreate
  $browser.a(:text => "users").click
  $browser.a(:text => "create a new user").click
  sleep 1
  $browser.a(:text => "User(").click
  sleep 1
  puts browser.url
  $browser.text_field(:name => "name").set PROP["name"]
  $browser.text_field(:name => "password").set PROP["password"]
  $browser.button(:value => "Update Details").click
  puts browser.url
end

def catcreate
  $browser.a(:text => "categories").click
  $browser.a(:text => "create a new category").click
  sleep 1
  $browser.a(:text => "New Category").click
  sleep 1
  puts $browser.url
  $browser.text_field(:name => "cat").set "testcategory"
  $browser.button(:value => "Update Category").click
end

def status
  $browser.a(:text => "status").click
  $browser.a(:text => "create a new status").click
  sleep 1
  $browser.a(:text => "new status").click
  sleep 1
  puts $browser.url
  $browser.text_field(:name => "status").set "teststatus"
  $browser.button(:value => "Update Status").click
  puts $browser.url
end

def teardown
  $browser.close
end



end
