Extension: EspecialidadCL
Id: VSEspecialidadesDeisCL
Title: "Especialidad del médico principal"
Description: "Esta extensión incluye los códigos de las especialidades que puede tener el medico principal"
Context: Prestador

// hola como estas https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/EncounterCL

* valueCoding 0..1
* valueCoding only Coding
* valueCoding from https://hl7chile.cl/fhir/ig/clcore/ValueSet/VSEspecialidadesDeisCL (extensible)
* valueCoding ^sliceName = "valueCoding"