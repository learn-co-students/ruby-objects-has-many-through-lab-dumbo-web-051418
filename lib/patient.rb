

class Patient

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    new_ap = Appointment.new(self, doctor, date)
    new_ap
  end

  def doctors
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient
    end
  end  

end
