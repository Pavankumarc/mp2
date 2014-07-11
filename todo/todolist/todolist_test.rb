require './todolist'
require 'test/unit'


class Testcase < Test::Unit::TestCase

def test_empty
assert_equal "clear",Todolist.empty
assert_equal 0,Todolist.pending
assert_equal 0,Todolist.completed
assert_equal 0,Todolist.list
end

  
def test_add1
assert_equal 1,Todolist.add("hello")
assert_equal 2,Todolist.add("hey")
assert_equal 2,Todolist.pending
assert_equal "hey",Todolist.show_pending(2)
end

def test_add2
assert_equal 3,Todolist.add("hi")
assert_equal 4,Todolist.add("hi")
assert_equal 5,Todolist.add("hi")
assert_equal 5,Todolist.pending
end


def test_add3
assert_equal 5,Todolist.pending
assert_equal 1,Todolist.complete(1)
assert_equal 2,Todolist.complete(2)
assert_equal 3,Todolist.complete(3)
assert_equal "hello",Todolist.show_completed(1)
assert_equal 2,Todolist.pending
end

 

def test_add4
puts Todolist.pending
assert_equal 2,Todolist.pending                
end


def test_add5
assert_equal 2,Todolist.delete(1)
assert_equal 2,Todolist.completed
end


def test_add6
assert_equal 4,Todolist.list
end


def test_add7
assert_equal 2,Todolist.modify(2,"bye")
end

def test_add8
assert_equal "bye",Todolist.show_pending(2)
end

def test_add9
assert_equal "hi",Todolist.show_completed(1)
end



end
