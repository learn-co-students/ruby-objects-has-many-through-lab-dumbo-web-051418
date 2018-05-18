class Doctor
  attr_reader :name, :appointments

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appt = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def patients
    self.appointments.map { |appointment| appointment.patient }.uniq
  end
end
