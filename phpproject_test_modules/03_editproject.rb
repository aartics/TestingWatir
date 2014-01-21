# encoding: UTF-8

require "rubygems"
require "watir-webdriver"
require "/home/ubuntu/phpproject_test_modules/module"

require "test/unit"
require "test/unit/ui/console/testrunner"


def load_properties(properties_filename)
        properties = {}
        File.open(properties_filename, 'r') do |properties_file|
        properties_file.read.each_line do |line|
                line.strip!
                if (line[0] != ?# and line[0] != ?=)
                        i = line.index('=')
                        if (i)
                                properties[line[0..i - 1].strip] = line[i + 1..-1].strip
                        else
                                properties[line] = ''
                        end
                end
                end
        end
  properties
end
PROP=load_properties('./editproject_good_prop')

class  TC_New < Test::Unit::TestCase
include Testmodules

def test03_editproject
xinitialize
login
editproject
teardown
end


end
