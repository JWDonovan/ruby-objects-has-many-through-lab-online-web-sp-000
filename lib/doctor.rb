class Doctor
  attr_reader :name

  @@all = []

  def initalize(name)
    @name = name
    @@all << self
  end
end
