class Appointment

  attr_reader :patient, :doctor, :date

  @@all = []

  #obj obj string
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date

    @@all << self
  end

  def self.all
    @@all
  end

end
