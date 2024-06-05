Profile: RolPrestador
Parent: PractitionerRole
Id: RolPrestador
Title: "Perfil del Rol del Prestador"
Description: "Aca esta el perfil del rol del prestador"

* organization 1..1
* organization only Reference(Organization)
* organization ^short = "Nombre de la Organización"

* healthcareService 1..*
* healthcareService only Reference(HealthcareService)
* healthcareService ^short = "Servicio del prestador que realizara la cita medica"

Instance: EjemploRolPrestador
InstanceOf: RolPrestador
Usage: #example
Title: "EjemploRolPrestador"
Description: "Aca esta el ejemplo del rol prestador"

* organization = Reference(Organization/EjemploOrganizacion)
* healthcareService = Reference (HealthcareService/EjemploServicioDeSalud)