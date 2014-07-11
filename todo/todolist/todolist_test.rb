require './todolist'
require 'test/unit'


class Testcase < Test::Unit::TestCase

def test_1
assert_equal "clear",Todolist.empty
assert_equal 0,Todolist.pending
assert_equal 0,Todolist.completed
assert_equal 0,Todolist.list
end

  
def test_2
assert_equal 1,Todolist.add("hello")
assert_equal 2,Todolist.add("hey")
assert_equal 2,Todolist.pending
assert_equal "hey",Todolist.show_pending(2)
end

def test_3
assert_equal 3,Todolist.add("hi")
assert_equal 4,Todolist.add("bye")
assert_equal 5,Todolist.add("tc")
assert_equal 5,Todolist.pending
end


def test_4
assert_equal 5,Todolist.pending
assert_equal 1,Todolist.complete(1)
assert_equal 2,Todolist.complete(2)
assert_equal 3,Todolist.complete(3)
assert_equal "hello",Todolist.show_completed(1)
assert_equal 2,Todolist.pending
assert_equal 3,Todolist.completed
end

 

def test_5
puts Todolist.pending
assert_equal 2,Todolist.pending                
end


def test_6
assert_equal 2,Todolist.delete(1)
assert_equal 2,Todolist.completed
end


def test_7
assert_equal 4,Todolist.list
end


def test_8
assert_equal 2,Todolist.modify(1,"bye")
end

def test_9
assert_equal "bye",Todolist.show_pending(1)
end




end
