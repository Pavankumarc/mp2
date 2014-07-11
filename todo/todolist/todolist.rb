class Todolist
attr_accessor :filename,:todo,:pending,:completed
$todo=[]
$pending=[]
$completed=[]

#initialize method
def initialize(filename)
$filename=filename
end

#empty method
def empty
$todo.clear
$pending.clear
$completed.clear
return "clear"
end

#add method
def add(item)
$pending << item
return $pending.size
end

#pending method
def pending
return $pending.size
end

#complete method
def complete(linenumber)
$completed << $pending[linenumber-1]
$pending.delete_at(linenumber - 1)
return $completed.size
end

#completed method
def completed
return $completed.size
end

#list method
def list
$todo = $pending + $completed
return $todo.size
end

#delete method
def delete(linenumber)
$completed.delete_at(linenumber - 1)
return $completed.size
end

#modify method
def modify(linenumber,item)
$pending.delete_at(linenumber-1)
$pending << item
return $pending.size
end


#show pending method
def show_pending(linenumber)
return $pending[linenumber-1]
end

#show completed method
def show_completed(linenumber)
return $completed[linenumber-1]
end
end


