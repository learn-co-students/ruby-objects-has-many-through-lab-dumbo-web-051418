class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = []
  def self.all
    @@all
  end

  def initialize(patient, doctor, date)
    @date = date
    @doctor = doctor
    @patient = patient

    @@all << self
  end

  def patient
    @patient
  end

end
