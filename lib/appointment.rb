class Appointment
  attr_reader :doctor, :patient

  @@all = Array.new

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all.push(self)
  end

  def self.all
    @@all
  end
end
