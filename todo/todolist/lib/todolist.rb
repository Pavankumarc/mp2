require "../../item/lib/item.rb"

class Todolist
attr_accessor : str
def self.add
obj = Item.new
str = ""
str=obj.add
return str
end

def save
f = File.open("text.txt",w)
obj=Item.new
s=obj.str.add
f.write("s")
end

def delete

end

def complete

end

def pending

end

def update

end
end

