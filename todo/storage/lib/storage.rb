
class Storage
def self.dump(filename)
f=File.open("filename",w)
data=f.write("hello world")
return data
end
end
