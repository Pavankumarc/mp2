require './todolist'
require 'test/unit'



class Testcase < Test::Unit::TestCase
attr_accessor :t
$t=Todolist.new("a.txt")

def test_1
assert_equal "clear",$t.empty
assert_equal 0,$t.pending
assert_equal 0,$t.completed
assert_equal 0,$t.list
end

  
def test_2
assert_equal 1,$t.add("hello")
assert_equal 2,$t.add("hey")
assert_equal 2,$t.pending
assert_equal "hey",$t.show_pending(2)
end

def test_3
assert_equal 3,$t.add("hi")
assert_equal 4,$t.add("bye")
assert_equal 5,$t.add("tc")
assert_equal 5,$t.pending
end


def test_4
assert_equal 5,$t.pending
assert_equal 1,$t.complete(1)
assert_equal 2,$t.complete(2)
assert_equal 3,$t.complete(3)
assert_equal "hello",$t.show_completed(1)
assert_equal 2,$t.pending
assert_equal 3,$t.completed
end

 

def test_5
assert_equal 2,$t.pending                
end


def test_6
assert_equal 2,$t.delete(1)
assert_equal 2,$t.completed
end


def test_7
assert_equal 4,$t.list
end


def test_8
assert_equal 2,$t.modify(1,"bye")
end

def test_9
assert_equal "bye",$t.show_pending(1)
end




end

