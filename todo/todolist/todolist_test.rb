require './todolist'
require 'test/unit'



class Testcase < Test::Unit::TestCase
attr_accessor :t
$t=Todolist.new("a.txt")

#testing for empty file
def test_1
assert_equal "clear",$t.empty
assert_equal 0,$t.pending
assert_equal 0,$t.completed
assert_equal 0,$t.list
end

#testing for first add method  
def test_2
assert_equal 1,$t.add("hello")
assert_equal 2,$t.add("hey")
assert_equal 2,$t.pending
assert_equal "hey",$t.show_pending(2)
end

#testing second add method
def test_3
assert_equal 3,$t.add("hi")
assert_equal 4,$t.add("bye")
assert_equal 5,$t.add("tc")
assert_equal 5,$t.pending
end

#testing for complete
def test_4
assert_equal 5,$t.pending
assert_equal 1,$t.complete(1)
assert_equal 2,$t.complete(2)
assert_equal 3,$t.complete(3)
assert_equal "hello",$t.show_completed(1)
assert_equal 2,$t.pending
assert_equal 3,$t.completed
end

 
#testing for pending
def test_5
assert_equal 2,$t.pending                
end

#testing for delete
def test_6
assert_equal 2,$t.delete(1)
assert_equal 2,$t.completed
end

#testing for todo list
def test_7
assert_equal 4,$t.list
end

#testing for modify
def test_8
assert_equal 2,$t.modify(1,"bye")
end

#testing for show pending
def test_9
assert_equal "bye",$t.show_pending(1)
end

#testing for show completed
def test_show
assert_equal "hi",$t.show_completed(1)
end

end

