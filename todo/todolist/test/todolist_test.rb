require '../lib/todolist.rb'
require 'test/unit'


class Testcase < Test::Unit::TestCase
  def test
   assert_equal "hello",Todolist.add
   


  end


end


