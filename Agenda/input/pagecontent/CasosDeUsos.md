### Casos de uso del Proyecto
Esta guía de implementación es diseñada para el uso de datos enfocados en la Atención Primaria de Salud (APS) para Agenda. A continuacion se puede observar su diagrama de secuencia: 

<div align="center" >
  {% include DiagramaSecuencia.svg %}
</div>
<br clear="all"/>

### Casos de usos
El proyecto se separa en 4 Casos de Usos, los cuales son detallados a continuación:

##### Caso de Uso 1: Solicitud de hora
Este caso de uso describe la solicitud de una hora médica solicitada por el paciente, el cual esperara una respuesta (date).
<br>

##### Operación
Se utiliza el método **POST** para enviar una solicitud de creación de una nueva cita. Quedando la siguiente transacción:
<br>
POST [URL_Base]/Appointment/

#### Caso de Uso 2: Acepto/Rechazo de hora 
Cuando el paciente recibe la respuesta de esta solicitud, el paciente puede aceptar o rechazar esta hora médica.


##### Operación
Se utiliza el metodo **PUT** para poder aceptar o rechazar la cita medica. Quedando la siguiente transacción:
<br>
PUT [URL_Base]/Appointment{id_Appointment}

#### Caso de uso 3: Reagendamiento de hora
Si el paciente necesita reagendar (actualizar)la hora, se puede hacer con la siguiente transacción:
<br>

##### Operación
PUT [URL_Base]/Appointment{id_Appointment}

#### Caso de uso 4: Lectura de la hora
Este caso de uso se desarrolla en el momento en que el paciente quiere obtener información de la cita médica. Este lo puede realizar a traves de las siguientes transacciones:
<br>

##### Operaciones
