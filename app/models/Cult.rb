class Cult
  attr_accessor :name, :location, :founding_year, :slogan, :minimum_age

  @@all = []

  def initialize(name, location, founding_year, minimum_age)
    @name = name
    @location = location
    @founding_year = founding_year
    @minimum_age = minimum_age
    @@all << self
  end

  def recruit_follower(follower)
    if @minimum_age > follower.age
      puts "You are too young!"
    else
      BloodOath.new(follower, self)
    end
  end

  def followers
    follower_list = []
    BloodOath.all.each do |bloodoath|
      if bloodoath.cult == self
        follower_list << bloodoath.follower
      end
    end
    follower_list
  end

  def cult_population
    followers.size
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    @@all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    @@all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(founding_year)
    @@all.select do |cult|
      cult.founding_year == founding_year
    end
  end

  def average_age
    counter = 0
    followers.each do |follower|
      counter += follower.age
    end
    counter/cult_population
  end

  def my_followers_mottos
    followers.each do |follower|
      puts follower.motto
    end
  end

  def self.least_popular
    @@all.min_by{|cult| cult.cult_population}
  end

  def self.most_common_location
    count = {}
    @@all.each do |cult|
      count[cult.location] ||= 0
      count[cult.location] += 1
    end
    max = 0
    max_location = nil
    count.each do |k, v|
      if v > max
        max = v
        max_location = k
      end
    end
    max_location
  end
end
