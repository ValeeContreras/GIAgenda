Profile: ServicioDeSalud
Parent: HealthcareService
Id: ServicioDeSalud
Title: "Perfil del Servicio De Salud"
Description: "Perfil del Servicio de Salud"

* extension contains Servicios named servicios 0..1 MS
  * ^short = "Servicio del prestador" 

Instance: EjemploServicioDeSalud
InstanceOf: ServicioDeSalud
Usage: #example
Title: "Ejemplo Servicio de Salud"
Description: "Ejemplo del Servicio de Salud"

* extension[servicios].valueCode = #1