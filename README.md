# Proyecto-IV [![Build Status](https://travis-ci.org/CharlySM/Proyecto-IV.svg?branch=master)](https://travis-ci.org/CharlySM/Proyecto-IV)

# Descripción del proyecto
Se trata de una aplicación web qque muestre los resultados de los partidos de la liga Santander, cuando se hace click en un equipo muestre los estados de forma de los jugadores de ese equipo, mostrará también la clasificación de la liga Santander y habrá un apartado donde se intentará predecir los resultados de la siguiente jornada de la liga Santander, teniendo en cuenta los estados de forma de los jugadores en partidos anteriores.  

 nota:  
 El estado de forma de los jugadores se obtendrá por el sistema de puntuación de la página [comuniazo](www.comuniazo.com). En esta página se muestran las puntuaciones de la página [comunio](www.comunio.com) que obtiene los datos de las puntuaciones de SportRadar. Para mostrar la forma de los jugadores al usuario se utilizara el apartado que pone media en la sección de jugadores de comuniazo.  
 Para la predicción de los resultados de los partidos se utilizará una media del estado de forma de los jugadores de los últimos cinco partidos que es mostrado en la sección de jugadores en la página de [comuniazo](www.comuniazo.com). Para mostrar la clasificación, los equipos existentes y la jornada actual se utilizará la página web del diario AS.


# Tecnologías a usar

HTML5  
CSS  
RUBY  
mysql  
Se subirá al Paas Amazon o Azure  

# Interés
Es un proyecto de interés personal.

#Integración continua

Para hacer integración continua se ha utilizado TRAVIS-CI, lo he elegido por que es fácil de manejar. Se ha utilizado la gema test-unit de ruby para realizar los test.  
Como no hay una base de datos definida se ha declarado una estructura de datos estática con 5 equipos y el test comprobará que hay 5 equipos. Cuando este la base de datos se comprobará que hay 20 equipos.
