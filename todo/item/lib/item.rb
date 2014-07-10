require "../../storage/lib/storage.rb"
class Item

def self.add

a=""
a= "111"
obj=Storage.new
str=obj.dump(a)
return str

end
def self.delete
a="hello"
obj=Storage.new
str=obj.load1(a)

end
