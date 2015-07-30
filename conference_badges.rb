require 'pry'
# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end
def batch_badge_creator(names)
  i=0
  ret=[]
  names.each do |name|
    ret[i]=badge_maker(name)
    i+=1
  end
  ret
end
def assign_rooms(names)
  i=0
  names.each do |name|
    names[i]="Hello, #{name}! You'll be assigned to room #{i+1}!"
    i+=1
  end
end
def printer(names)
  b=batch_badge_creator(names)
  a=assign_rooms(names)
  
  b.each do |word|
    puts word
  end
  a.each do |w|
    puts w
  end
end

printer(["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"])