Profile: Prestador
Parent: Practitioner
Title: "Perfil del Prestador"
Description: "Este Perfil es del prestador con los datos necesarios del prestador para APS"

* name 1..*
  * ^short = "Nombre asociado al paciente" 
  * ^definition = "Patient.name: A name associated with the individual"
  * family 1..1
    * ^short = "Primer Apellido del paciente"
    * extension contains http://hl7.org/fhir/StructureDefinition/humanname-mothers-family named SegundoApellido 0..1

* qualification MS 
* qualification ^slicing.discriminator.type = #value 
* qualification ^slicing.discriminator.path = "code.text" 
* qualification ^slicing.description = "Debido a que los profeisonales de la salud pueden tener titulo y nform poseer especialidades, es que se ha realizado un slice, con el fin de poder diferenciarlos." 
* qualification ^slicing.rules = #open 
* qualification ^short = "Certificados, títulos y/o Especialidad(es) obtenidas por el Prestador" 
* qualification ^definition = "Certificados, nforma y/o especialidades que el Prestador pueda validar" 
* qualification contains 
  Cert 0..* MS and 
  Esp 0..* MS 
* qualification[Cert] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador."
* qualification[Cert] ^definition = "Listado de Títulos o Cetificados Profesionales que tiene el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente." 
* qualification[Cert].code.text 1.. 
* qualification[Cert].code.text = "Certificado(s)" 
* qualification[Esp] ^short = "Especificación de la o las  especialidades que posea el prestador" 
* qualification[Esp] ^definition = "Listado de especialidades que posee el prestador. Solo se consideran aquellos que pueden ser demostrados en consulta a la casa de estudios pertinente" 
* qualification[Esp].identifier ^short = "Identificador de especialidades."
* qualification[Esp].identifier ^definition = "Identificación especialidades profesionales indicando procedencia y casa de estudios." 
* qualification[Esp].code.text 1.. 
* qualification[Esp].code.text = "Especialidad(es)"

Instance: EjemploPrestador
InstanceOf: Prestador
Usage: #example
Title: "Ejemplo del perfil del prestador"
Description: "Ejemplo del prestador"

* name.family = "Sebastian Alberto"
* name.given = "Navarro"

* qualification[0].code = https://api.minsal.cl/v1/catalogos/profesiones/#2112 "Certificado 
Profesional Médico Cirujano" 
* qualification[=].code.text = "Certificado(s)" 
* qualification[+].code = https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/#122 
"Cardiólogia" 
* qualification[=].code.text = "Especialidad(es)" 
* qualification[+].code = https://api.minsal.cl/v1/catalogos/tiposEspecialidadMedica/#1234 
"Medicina interna" 
* qualification[=].code.text = "Especialidad(es)" 
