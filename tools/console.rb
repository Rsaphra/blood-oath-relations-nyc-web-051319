require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

necronomicult = Cult.new("Necronomicult", "LA", 23, 80)
mansonmania = Cult.new("Mansonmania", "Portland", 1963, 6)
hplovecrap = Follower.new("HP Lovecrap", 90)
hplovecrap.join_cult(necronomicult)
hplovecrap.join_cult(mansonmania)
raphi = Follower.new("Raphi", 24)
mendel = Follower.new("Mendel", 22)
kevin = Follower.new("kevin", 22)
sam = Follower.new("sam", 22)
john = Follower.new("john", 22)
gorbetha = Follower.new("gorbetha", 22)
mary = Follower.new("mary", 22)
sticky = Follower.new("sticky", 22)
tom = Follower.new("tom", 22)
tim = Follower.new("tim", 22)
elmo = Follower.new("elmo", 22)
elma = Follower.new("elma", 22)
flatiron = Cult.new("Flatiron", "NYC", 2011, 18)
we_work = Cult.new("We Work", "NYC", 2009, 21)
cult_of_hugs = Cult.new("Cult of Hugs uwu", "Brooklyn", 2019, 10)
flatiron.recruit_follower(mendel)
raphi.join_cult(cult_of_hugs)
puts Follower.of_a_certain_age(23)
raphi.join_cult(flatiron)
necronomicult.recruit_follower(mendel)
hplovecrap.join_cult(flatiron)
elmo.join_cult(flatiron)
elma.join_cult(flatiron)
tom.join_cult(flatiron)
tim.join_cult(flatiron)
john.join_cult(flatiron)
sticky.join_cult(flatiron)
mary.join_cult(flatiron)
elmo.join_cult(flatiron)
gorbetha.join_cult(necronomicult)
elmo.join_cult(necronomicult)
john.join_cult(necronomicult)
tim.join_cult(necronomicult)
sam.join_cult(mansonmania)
sam.join_cult(we_work)


top_ten = Follower.top_ten
binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
