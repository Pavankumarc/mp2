
class Todolist


#initialize method
def initialize(filename)
@filename=filename
end

#empty method
def empty
@todo=[]
@pending=[]
@completed=[]

end

#add method
def add(item)
@pending << item
return @pending
end

#pending method
def pending
return @pending
end

#complete method
def complete(linenumber)
@completed << @pending[linenumber-1]
@pending.delete_at(linenumber - 1)
return @completed
end

#completed method
def completed
return @completed
end

#list method
def list
@todo = @pending + @completed
return @todo
end

#delete method
def delete(linenumber)
@completed.delete_at(linenumber - 1)
return @completed
end

#modify method
def modify(linenumber,item)
@pending[linenumber-1].replace(item)
return @pending
end


#show pending method
def show_pending(linenumber)
return @pending[linenumber-1]
end

#show completed method
def show_completed(linenumber)
return @completed[linenumber-1]
end



def load1

File.open("pavan.txt") do |file|
    file.each do |line|
     if line.match('pending')
     @pending << line
     else
     @completed << line
      end
    end
  end
return @completed


end
end
