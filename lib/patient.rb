class Patient 
  
  attr_reader :name, :appointments
  
  def initialize(name) 
    @name = name 
    @appointments = []
  end 
  
  def new_appointment(doctor, date) 
    appointment = Appointment.new(self, doctor, date)
    @appointments << appointment 
    return appointment
  end 
  
  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end 
  
end 