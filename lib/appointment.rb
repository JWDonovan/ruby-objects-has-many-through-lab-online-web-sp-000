class Appointment
  @@all = []

  def initalize
    @@all << self
  end

  def self.all
    @@all
  end
end
