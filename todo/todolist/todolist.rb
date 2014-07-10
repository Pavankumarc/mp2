class Todolist
attr_accessor :filename,:todo,:pending,:completed
@todo=[]
@pending=[]
@completed=[]


def self.initialize(filename)
@filename=filename
end


def self.add(item)
@pending << item
return @pending.size
end

def self.list
@todo = @pending + @completed
return @todo.size
end

def self.complete(linenumber)
@completed << @pending[linenumber-1]
@pending.delete_at(linenumber - 1)
return @completed.size
end

def self.pending
return @pending.size
end

def completed
return @completed.size
end

def self.delete(linenumber)
@completed.delete_at(linenumber - 1)
return @completed.size
end


def self.modify(linenumber,item)
@pending.delete_at(linenumber-1)
@pending << item
return @pending.size
end

def self.empty
a = @todo.delete
return a.size
end

def self.show_pending(linenumber)
return @pending[linenumber-1]
end

def self.show_completed(linenumber)
return @completed[linenumber-1]
end
end


