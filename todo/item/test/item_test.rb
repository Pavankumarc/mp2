require '../lib/item.rb'
require 'test/unit'

class Testcase < Test::Unit::TestCase

 def test
 assert_same "hello",Item.add
 end
 
end
 
