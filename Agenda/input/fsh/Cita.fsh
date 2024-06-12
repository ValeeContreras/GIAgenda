Profile: Cita
Parent: Appointment
Title: "Perfil Cita"
Description: "Una reserva de un evento de atención médica entre pacientes, médicos, personas relacionadas y/o dispositivos para una fecha/hora específica. Esto puede resultar en uno o más Encuentros."

* extension contains Prestaciones named prestaciones 1..* MS
  * ^short = "Servicio que se realizara durante la cita" 
  * ^definition = "Appointment.Prestacion: Prestacion/es que se realizara en la cita medica."

* extension contains ApellidoServicio named apellidoservicio 1..1 MS
  * ^short = "Edad del paciente" 
  * ^definition = "Patient.edad: La edad del individuo. Es un número entero."

* specialty 1..*
* specialty from http://hl7.org/fhir/ValueSet/c80-practice-codes 
  * ^short = "La especialidad de un profesional que se requeriría para realizar el servicio solicitado en esta cita"
  * ^definition  = "Appointment.specialty: La especialidad de un profesional que se requeriría para realizar el servicio solicitado en esta cita."

* participant 1..*
* participant.actor only Reference(Practitioner)
  * ^short = "Nombre del prestador que dara la cita médica"

* start 0..1
  * ^short = "Cuando se realizará la cita"
  * ^definition = "Appointment.start: Fecha/Hora en que se realizará la cita."

* extension contains SintomasEspeciales named SintomasEspeciales 1..* MS
  * ^short = "Sintomas que tiene el paciente" 
  * ^definition = "Appointment.SintomasEspeciales: Sintomas que tiene el paciente"

* extension contains UrgenciaPercibida named UrgenciaPercibida 1..1 MS
  * ^short = "Urgencia percibida del paciente" 
  * ^definition = "Appointment: Urgencia percibida del paciente."


Instance: EjemploCita
InstanceOf: Cita
Usage: #example
Title: "EjemploCita"
Description: "Aca esta el ejemplo de la cita"

* status = #waitlist
* specialty = #408467006
* participant.actor = Reference(Practitioner/EjemploPrestador)
* participant.status = #accepted
//* start = "2023-01-22T09:00:00Z"
//* end = "2023-01-22T09:20:00Z"
* extension[SintomasEspeciales].valueCode = #01
* extension[UrgenciaPercibida].valueCode = #02
* extension[Prestaciones].valueCode = #2
* extension[ApellidoServicio].valueString = "Comentario de la cita"
