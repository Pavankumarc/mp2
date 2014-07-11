require './todolist'
require 'test/unit'



class Testcase < Test::Unit::TestCase

def setup
@t=Todolist.new("pavan.txt")
end

def teardown
@t=nil
end

#testing for empty file
def test_empty
@t.empty
assert_equal 0,@t.pending.size
assert_equal 0,@t.completed.size
assert_equal 0,@t.list.size
end

#testing for first add method  
def test_add1

@t.empty
@t.add("hi")
@t.add("hello")
@t.add("hey")
@t.add("bye")
@t.add("tc")
assert_equal 5,@t.pending.size
assert_equal 5,@t.list.size
assert_equal 0,@t.completed.size
assert_equal "hello",@t.show_pending(2)
end


#testing for complete
def test_complete

#before calling method
@t.empty
@t.add("hi")
@t.add("hello")
@t.add("hey")
assert_equal 3,@t.pending.size
assert_equal 3,@t.list.size
assert_equal 0,@t.completed.size

#action
@t.complete(1)
@t.complete(2)

#after calling method
assert_equal 3,@t.list.size
assert_equal 1,@t.pending.size
assert_equal 2,@t.completed.size
end

 
#testing for pending
def test_pending
@t.empty
@t.add("hi")
@t.add("hello")
@t.add("hey")
assert_equal 3,@t.pending.size
assert_equal 3,@t.list.size
assert_equal 0,@t.completed.size
assert_equal "hi",@t.show_pending(1)
assert_equal "hello",@t.show_pending(2)
assert_equal "hey",@t.show_pending(3)
end



#testing for delete
def test_delete

@t.empty
@t.add("hi")
@t.add("hello")
@t.add("hey")
assert_equal 3,@t.pending.size
assert_equal 3,@t.list.size
assert_equal 0,@t.completed.size


@t.complete(1)
assert_equal 2,@t.pending.size
assert_equal 1,@t.completed.size

@t.delete(1)

assert_equal 2,@t.pending.size
assert_equal 0,@t.completed.size
assert_equal 2,@t.list.size
end



#testing for todo list
def test_list
@t.empty
@t.add("hi")
@t.add("hello")
@t.add("hey")
@t.list
assert_equal 3,@t.list.size
end




#testing for modify
def test_8

@t.empty
@t.add("hi")
@t.add("hello")
@t.add("hey")
assert_equal 3,@t.pending.size
assert_equal 3,@t.list.size
assert_equal 0,@t.completed.size
assert_equal "hi",@t.show_pending(1)

@t.modify(1,"bye")
@t.modify(2,"hi")
assert_equal "bye",@t.show_pending(1)
assert_equal "hi",@t.show_pending(2)
end



#testing for show pending
def test_9
@t.empty
@t.add("hi")
@t.add("hello")
@t.add("hey")
assert_equal "hey",@t.show_pending(3)
end


#testing for show completed
def test_show

@t.empty
@t.add("hi")
@t.add("hello")
@t.add("hey")

@t.complete(1)
@t.complete(3)
assert_equal "hi",@t.show_completed(1)
end

def test_load1
@t.empty
assert_equal 0,@t.load1.size
end
end
