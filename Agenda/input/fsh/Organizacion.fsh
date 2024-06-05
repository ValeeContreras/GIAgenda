Profile: Organizacion
Parent: Organization
Title: "Perfil de la Organización"
Description: "Este perfil es de la organizacion APS."

* name 1..1
  * ^short = "Nombre utilizado para la organización" 
  * ^definition = "Organitation.name: Un nombre asociado a la organización."

Instance: EjemploOrganizacion
InstanceOf: Organizacion
Usage: #example
Title: "Ejemplo de organización"
Description: "Aca esta el ejemplo de organización"
* name = "CESFAM Barón"