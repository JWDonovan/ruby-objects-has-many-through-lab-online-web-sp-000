class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << save
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end

  def doctors
    appointments.map(&:doctor)
  end
end
