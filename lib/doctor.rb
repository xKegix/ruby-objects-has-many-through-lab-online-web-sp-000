
class Doctor
  attr_accessor :name, :date, :patient, :appointment
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient, appointment)
    Appointment.new(date, self, patient, appointment)
  end

  def appointments
    Appointment.all.select {|doc| doc.appointment}
  end
end
