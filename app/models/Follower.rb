class Follower

  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def join_cult(cult)
    if @age < cult.minimum_age
      puts "You are too young!"
    else
      BloodOath.new(self, cult)
    end
  end

  def cults

    cult_list = []
    BloodOath.all.each do |bloodoath|
      if bloodoath.follower == self
        cult_list << bloodoath.cult
      end
    end
    cult_list
  end

  def self.all
    @@all
  end

  def self.of_a_certain_age(age)
    @@all.select do |follower|
      follower.age >= age
    end
  end

  def fellow_cult_members
    cults.map do |cult|
      cult.followers
    end.flatten.reject {|x| x == self}.uniq
  end

  def my_cults_slogans
    cults.each do |cult|
      puts cult.slogan
    end
  end

  def self.most_active
    @@all.max_by{|follower| follower.cults.size}
  end

  def self.top_ten
    full_list = @@all
    sorted_list = []
    full_list.length.times do
      curr_max = full_list.max_by{|follower| follower.cults.size}
      sorted_list << curr_max
      full_list.delete(curr_max)
    end
    @@all = sorted_list
    sorted_list[0..10]
  end

  # def self.top_ten
  #   # sorted_all = @@all.sort do |follower1, follower2|
  #   #   follower1.cults.size <=> follower2.cults.size
  #   #   binding.pry
  #   # end
  #   sort(@@all)
  # end
end
