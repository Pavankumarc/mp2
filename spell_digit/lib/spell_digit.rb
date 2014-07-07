class Spell_digit



def self.convert(n)
if n>0 and n<10
s1 = comp(n) 
return s1

elsif n>9 and n<100
m=n%10
s1=comp(m)
n=n-m
s2=comp(n)
return s2+s1

elsif n>99 and n<1000
m=n%10
s1=comp(m)
n=n-m
p=n%100
s2=comp(p)
n=n-p
n=n/100
s3="and"
s4="hundred"
s5=comp(n)
return s5+s4+s3+s2+s1

end
end

def self.comp(number)

if number == 1
"one"
elsif number ==2
"two"
elsif number ==3
"three"
elsif number ==4
"four"
elsif number ==5
"five"
elsif number ==6
"six"
elsif number ==7
"seven"
elsif number ==8
"eight"
elsif number ==9
"nine"
elsif number ==10
"ten"
elsif number ==11
"eleven"
elsif number ==12
"twelve"
elsif number ==13
"thirteen"
elsif number ==14
"fourteen"
elsif number ==15
"fifteen"
elsif number ==16
"sixteen"
elsif number ==17
"seventeen"
elsif number ==18
"eighteen"
elsif number ==19
"ninteen"
elsif number ==20
"twenty"
elsif number ==30
"thirty"
elsif number ==40
"fourty"
elsif number ==50
"fifty"
elsif number ==60
"sixty"
elsif number ==70
"seventy"
elsif number ==80
"eighty"
else number ==90
"ninty"
end

end

end
