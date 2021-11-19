# parcialAmongUs

En Among Us unos jugadores quedan varados en el espacio por desperfectos en su nave y necesitan trabajar juntos para realizar las reparaciones necesarias. Esto pareciera ser bastante sencillo si no fuera por el hecho de que entre los jugadores se encuentran tripulantes (que cooperan con las tareas) pero también impostores, quienes pueden sabotear la nave y presentar un riesgo a los tripulantes.
La nave es única y, entre otras características que iremos mencionando, conoce a todos los jugadores, cuántos impostores permanecen en la nave y cuántos tripulantes permanecen en la nave. No es necesario preocuparse en este momento por cómo se inicializan estos valores.
De los jugadores (tanto impostores como tripulantes) sabemos su color, una mochila que inicia vacía, un nivel de sospecha que comienza en 40, y ciertas tareas a realizar, que pueden repetirse entre los jugadores. La mochila posee varios ítems que los jugadores usan para resolver las tareas que se les asignan, pero son de un solo uso, así que al ser usados se remueven de su mochila.
Se pide
Saber si un jugador es sospechoso. Esto sucede cuando su nivel de sospecha es mayor a 50.
Hacer que un jugador busque un ítem. Como resultado, agrega el ítem que buscaba a su mochila.


Tareas
Como se mencionó anteriormente, los tripulantes realizan tareas para arreglar la nave y poder volver a la Tierra. Cuando a los impostores se les pide realizar una tarea no hacen nada. Por el momento conocemos las siguientes, pero podrían sumarse otras:
Arreglar el tablero eléctrico: requiere que el tripulante tenga una llave inglesa en su mochila. Al realizarse aumenta 10 puntos el nivel de sospecha.
Sacar la basura: requiere que el tripulante tenga una escoba y una bolsa de consorcio en su mochila. Al realizarse disminuye 4 puntos el nivel de sospecha.
Ventilar la nave: aumenta en 5 puntos el nivel de oxígeno de la nave.
Cada vez que una tarea se completa el tripulante debe informar a la nave. En ese momento, la nave debe chequear si todas las tareas de todos los jugadores fueron completadas y, en caso afirmativo, lanzar una excepción que informe que ganaron los tripulantes.
Se pide 
Saber si un jugador completó todas sus tareas. Los impostores siempre dicen que sí.
Pedirle a un jugador que realice cualquier tarea pendiente de entre las que puede realizar. Recordar que los impostores no hacen nada, mientras que los tripulantes deben considerar que algunas tareas tienen restricciones. Por otro lado, si corresponde, debe informarse que ganaron los tripulantes.

Sabotajes
Para impedir que los tripulantes cumplan con su misión, los impostores pueden realizar diversos sabotajes. Cada sabotaje realizado aumenta 5 puntos el nivel de sospecha del autor. Algunos de ellos son los siguientes:
Reducir el oxígeno: baja 10 puntos el oxígeno de la nave a menos que alguien tenga un tubo de oxígeno al momento del sabotaje. Si el oxígeno llega a 0, debe lanzar una excepción que informe que ganaron los impostores.
Impugnar a un jugador: lo obliga a votar en blanco en la próxima reunión. El jugador puede volver a votar en reuniones posteriores.
Se pide
Hacer que un impostor realice un sabotaje.

Votación
Cualquier jugador puede llamar a una reunión de emergencia, momento en el que comienza una votación para saber quién será expulsado. Todos los jugadores que aún permanecen en la nave deben votar. Está permitido votarse a sí mismo, y los impostores votan un jugador al azar, mientras que cada tripulante decide su voto en función de su personalidad:
Los trolls votan a cualquier jugador que no sea sospechoso.
Los detectives votan al jugador con mayor nivel de sospecha.
Los materialistas votan a cualquiera que tenga vacía su mochila.
Para los casos en que ningún jugador cumple la condición propuesta (por ejemplo: un materialista ve que todos tienen algo en su mochila), entonces el tripulante vota en blanco.
La persona con mayor cantidad de votos es expulsada de la nave, a menos que gane el voto en blanco, en donde nadie es expulsado. En caso de empate, se expulsa a cualquiera de los más votados.
Los jugadores expulsados aún pueden realizar tareas o sabotajes, pero no son tenidos en cuenta a la hora de votar. Si hubo algún expulsado, la nave debe actualizar la cuenta de cuántos tripulantes o impostores permanecen, según corresponda.
Por último, al expulsar a un jugador puede haber un ganador, el cual se debe informar. Los tripulantes ganan si fueron expulsados de la nave todos los impostores. Los impostores ganan si quedan tantos impostores como tripulantes en la nave.
Se pide
Hacer que un jugador llame a una reunión de emergencia. Esto debe expulsar a un jugador de la nave luego de la votación (si corresponde) e informar si ganaron tripulantes o impostores (si corresponde).
