
class Storage

def self.dump(data)
f=File.open("text.txt",'w')
return f.write(data)
end

def self.load1(content)
f=File.read("text.txt",'r')
while line=f.gets
if line == content
f.delete(line)
end
end
return content
end

