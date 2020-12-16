class Doctor
  attr_reader :name

  @@all = []

  def initalize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end
