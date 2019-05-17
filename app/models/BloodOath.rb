require 'date'

class BloodOath
  attr_accessor :follower, :cult, :initiation_date

  @@all = []

  def initialize(follower, cult)
    @follower = follower
    @cult = cult
    @initiation_date = Time.now.strftime('%d/%m/%y')
    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    @@all[0]
  end

end
