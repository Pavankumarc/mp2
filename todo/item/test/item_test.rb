require '../lib/item.rb'
require 'test/unit'

class Testcase < Test::Unit::TestCase

 def test
 assert_same 3,Item.add
 end
 
end
 
