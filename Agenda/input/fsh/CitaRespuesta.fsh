Profile: CitaRespuesta
Parent: AppointmentResponse
Title: "Perfil de la Respuesta a la cita."
Description: "Una respuesta a una solicitud de cita para un paciente y/o médico(s), como una confirmación o un rechazo."

* appointment only Reference(Appointment)
* appointment
  * ^short = "Referencia a la cita"
  * ^definition  = "AppointmentResponse.appointment: Cita a la que responde esta respuesta."


* participantStatus 1..1
  * ^short = "Estado del paciente si rechaza o acepta la cita"
  * ^definition  = "AppointmentResponse.participantStatus: Estado de participación del participante. Cuando el estado es rechazado o tentativo si los horarios de inicio/finalización son diferentes a los de la cita, entonces estos horarios deben interpretarse como un cambio de horario solicitado. Cuando el estado es aceptado, los horarios pueden ser la hora de la cita (como confirmación de la hora) o pueden estar vacíos."

* start 1..1
  * ^short = "Nueva hora de cita solicitada"
  * ^definition = "Appointment.start: Fecha/Hora en que se realizará la cita o la nueva hora de inicio solicitada."  

Instance: EjemploRespuestaCita
InstanceOf: CitaRespuesta
Usage: #example
Title: "EjemploRespuestaCita"
Description: "Aca esta el ejemplo de la respuesta de la cita"

* appointment = Reference(Appointment/EjemploCita) 
* participantStatus = #accepted
* actor = Reference(Practitioner/EjemploPrestador)
* start = "2023-02-25T09:00:00Z"
* end = "2024-06-17T11:00:00Z"