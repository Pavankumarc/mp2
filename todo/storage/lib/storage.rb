class Storage

def self.dump(data)
f=File.open("text.txt",'w')
return f.write(data)
end

def self.load(filename)
f=File.read("filename",'r')
return f
end

end

