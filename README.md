[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/xzV997kL)
## Contexto 

Se presenta la problemática de una iglesia ficticia, sin relación alguna con cualquier culto existente. Toda similitud con la realidad es pura coincidencia. El presente problema hipotético no tiene por objeto modelizar, y mucho menos rediculizar, ninguna religión existente.

> Este es un sistema acotado por fines pedagógicos y no representa
la totalidad de los casos ni la complejidad que tendría un sistema real.

## Modelo inicial

Para un estudio sociológico, queremos modelizar algunos aspectos clave de esta particular religión de la modernidad tardía, de iniciativa privada. A ella pertenecen diferentes religiosos: frailes, sacerdotes y monjes. Puede ser que en el futuro se definan más.

## Fieles del culto

De los fieles por ahora solo sabemos que tienen un nombre, y este nombre puede consultarse. Ah, y una cantidad de dinero (en esta etapa nada pagan a la iglesia todavía).

## Sacramentos

Como la iglesia es nueva, por ahora sólo realiza casamientos y bautismos. Cada sacramento posee un arancel, pero que por ahora no se cobra.

## Religiosos

- Se han caracterizado los religiosos en general, por supuesto que todos tienen nombre, edad, un número de años que llevan de meditación, el talle de los hábitos, minutos diarios de oración, la cantidad de dinero que llevan ahorrado, y hasta se registra si es fumador o no.
- Arrancan cuando son nuevos en la iglesia con minutos de oración en cero, pero pueden ya traer años de meditación de su trabajo anterior.
- De todo religioso se puede averiguar fácilmente nombre, edad y años de meditación; pero otras cosas no, como el talle, cantidad exacta de dinero, minutos diarios de oración, o la condición de fumador (el sistema debe considerar que en la enorme mayoría de casos el religioso no fuma), ya que estos últimos cuatro datos se encuentran protegidos por el Décimo Concilio de Privacidad Eclesial (CPE-10).

- En general, se consideran buenos religiosos (y los que no lo son, serán los "malos") cuando oran al menos 30 minutos por día y no son fumadores. Hay excepciones acordadas con el sindicato que se explican luego.

- Todo religioso cuando comienza a desempeñarse se le dice la moneda en que ahorrará (entran al trabajo sin tener ni un centavo) pero todo lo que cobre será en pesos argentinos, independientemente de si es fraile, sacerdote, etc. "Usted elige si quiere trabajar acá, don."

- El convenio colectivo de religiosos establece un sueldo que la iglesia paga cada tanto. Salvo cuando se establece lo contrario, un religioso cobra un sueldo llamado "basico" en pesos argentinos, más un plus de 10% si es un buen religioso (sueldo por default, puede ser mas o puede ser menos segun la función del religioso). Toda esta plata inmediatamente la ahorran en alguna de las monedas permitidas.

# Tipos de religiosos según función

## Frailes:

- Se los considera jóvenes hasta los 90 años
- Experimentados son aquellos con 60 o más años de meditación. 
- Sólo imparten sacramentos cuando son jóvenes y al mismo tiempo experimentados.
- Son disciplinados sólo los buenos religiosos.
- Son resilientes, siempre que sean experimentados.
- Como es lógico, se los considera pobres cuando tienen poco dinero.
- El sueldo es el mismo del convenio de religiosos, más un 20% extra pero sólo si es pobre.

## Monjes:

- Se los considera jóvenes hasta los 70 años
- Son experimentados los que poseen 10 o más años de meditación. 
- No imparten sacramentos nunca.
- Son todos disciplinados, mientras son jóvenes, contrariamente a lo que la gente piensa.
- Únicamente son resilientes, los no jóvenes (en adelante, "viejos" para abreviar).
- Siempre se perciben pobres, independientemente del dinero que posean.
- El sueldo es la mitad del sueldo de convenio colectivo. "Que no se quejen que les doy techo y comida, y si no les gusta hay muchas otras iglesias ahi afuera" dijo el jefe de la iglesia, mientras cuenta el dinero de las donaciones. 
  y luego de numerosos reclamos del SURA (Sindicato Unido de Religiosos Argentinos), con cada cobro reciben un extra del 5% en concepto de vestimenta por talle común, o un 10% en talles grandes.  Cobran entonces: la mitad del basico + plus por vestimenta que le corresponda.

## Sacerdotes

- Se los considera jóvenes hasta los 65 años; 
- Experimentados se los considerará siempre.
- Siempre imparten sacramentos.
- Son todos disciplinados.
- Solo son relisientes cuando son viejos.
- Por otro acuerdo gremial, a todos se los considera buenos religiosos. Esto generó mucha contraversia.
- Nunca los consideramos pobres más allá de la cantidad de dinero ahorrado que posean.
- Y lo más interesante es que cobran bien, un 50% más que el sueldo de convenio colectivo...

# El dinero

- En la religión no es lo esencial, pero en fin, ya que estamos...
- Dentro del convento la vida es bastante monotona, se puede ahorrar mucho porque la iglesia cubre todos los gastos, luego no hay cines ni bares para gastarlo, y no está permitido salir.

- La iglesia siempre paga en pesos, pero establece en qué moneda ahorrará cada religioso cuando empieza su empleo (luego es la misma moneda y por el momento no se puede cambiar a otra). Cada moneda posee una cotización en pesos que puede variar, y un equivalente en pesos al momento que se consulte. Y tambien se establece un monto en esa moneda de ahorro, a partir del cual el que posee un ahorro igual o mayor a ese importe se considera rico (y pobre será el que no llega); claramente no es lo mismo tener pesos que dólares.
- Los religiosos ahorran (van acumulando lo que cobran -los pesos- en la moneda correcta) puede ser en reli-criptos (es un dinero sin respaldo emitido por esta iglesia), se considera mucho dinero a partir de 100 reli-criptos (cotización 1 RC = $110000). Otros, la mayoría, posee pesos argentinos (cotización 1 a 1), mucho dinero son más de $3.000.000. Nunca falta el privilegiado que negoció con RRHH cobrar dólares americanos (cotización 1 u$s = $1500), se toma como mucho dinero a partir de u$s 2000. Usan una moneda u otra para ahorrar, pero nunca varias al mismo tiempo ni es posible cambiar de moneda, al menos en esta etapa del problema.
- Al recibir un pago, si bien es en pesos, se acumula al ahorro en la moneda correcta de ahorro tomando la cotización actual de esa moneda, aumenta siempre el saldo del ahorro del religioso.
- En un futuro se incorporarán más monedas de ahorro (por ahora son esas tres). Pero recordar que el pago de sueldos es siempre en pesos argentinos!

# Talles

- Son talles grandes a partir del número 50. Los demás son talle común.
- Usar determinados talles, puede implicar un plus en determinados religiosos (se explicó más arriba).

# Los sueldos

- Sueldo es una manera de decir, porque son todos monotributistas. Pero dejémoslo ahí, lo llamamos sueldo, para que se entienda mejor. No hay vacaciones, aguinaldo, licencias ni nada.
- Existe el llamado sueldo "básico" o sea el fijado por el convenio colectivo, que $ 100.000, y que usamos en calculos en distintas partes del problema.
- Es importante recalcar que el ahorro de cada religioso siempre es en la moneda fijada en su ingreso (está prohibido el "Pst! cambio... cambiooo!!!").
- Dijimos que lo que cobra lo ahorra siempre y entonces va acumulando platita ... 

# La iglesia

- Posee registrados a todos los religiosos, por si le cae una inspección municipal o de la DGI.
- Debe tener manera de pagar los sueldos a los religiosos en forma individual, y tambien a todos ellos. Cuando paga lo hace según lo que le corresponde a cada uno según su función, y de acuerdo a lo explicado.

_Tip: Aunque en teoría un religioso puede asumir varios roles (por ejemplo, ser monje y sacerdote al mismo tiempo), esto no tomarlo en cuenta todavía en esta etapa del diseño._

## 1. Consultas sobre el modelo

Nos interesa poder consultar, de un religioso cualquiera:

- Su nombre
- La edad
- Años que lleva meditando
- Si es joven
- Si es experimentado
- Si es pobre
- Si puede administrar sacramentos
- Si tiene mucho dinero ahorrado
- Si es resiliente
- Cuanto cobrará en la actualidad (observar que es solo una consulta de cuánto cobra cada vez, no es lo mismo que consultar dinero que lleva ahorrado -esto ultimo además no se puede consultar, porque es personal-)

_Atención! Prestar atención a la división de responsabilidades._  

## 2. Consultas sobre el modelo, segunda parte

- Qué cantidad de religiosos hay
- Cuántos de los religiosos son pobres
- Los clientes exigentes a veces piden una lista de los nombres, pero sólo de aquellos religiosos que sean experimentados y que puedan administrar sacramentos.
- Promedio de edad en el convento
- Lista de los nombres de todos los religiosos.
- Lista de todos los malos religiosos (puede serle útil más adelante).

## 3. Requerimientos

1. Se deben poder pagar sueldos a todos, al hacerlo cada uno de los religiosos acumula lo que le corresponde, y lo hace en la moneda correcta, por supuesto.
2. Cansado ya de los malos religiosos, porque se la pasa pidiéndoles que se comporten mejor sin éxito, el jefe debe poder aplicarles un castigo terrible, que consiste en una confiscación de la mitad de los ahorros de cada uno, de estos malos religiosos. Observar que no se violan los términos del CPE-10, ya que el jefe da la orden al banco, le dice el porcentaje a confiscar, sin tocar directamente los ahorros del religioso (los religiosos al ingresar a la iglesia firman libre y "voluntariamente" un contrato entre privados en el que consienten al jefe esto y muchas otras cosas más).
3. Se deben poder agregar nuevos religiosos a la iglesia.

_Consejos: Prestar atención! No duplicar código! cuidado con las ideas repetidas._

## 4. El reformismo religioso v2: ¡Implementarlo te da más puntaje!

_IMPORTANTE: no modificar lo realizado hasta el momento; se puede escribir código y explicación de las modificaciones que se realizarán, entre comentarios por ejemplo /* ... */, de forma de no "romper" todo lo diseñado anteriormente, en especial ... si no te alcanza el tiempo para terminarlo y probar todo lo nuevo._

### Traducido, no es obligatorio escribir codigo ni tests de acá para adelante, pero tampoco se impide hacerlo

1. Tras la desregulación de entidades religiosas, proponer la forma mediante la cual un religioso puede tener una nueva función, luego de realizar un curso de religión a distancia en la UAIP (Universidad de la asociación de iglesias posmodernas). De esta forma, un fraile podría convertirse además en sacerdote, haciendo el curso de sacerdote, por ejemplo (tendría ambos "títulos")
2. Al cobrar el sueldo, sólo cobra el mejor sueldo de todas las funciones que posee. Por ejemplo si es monje y sacerdote al mismo tiempo, sólo cobrará el sueldo correspondiente a un sacerdote que es más alto.
3. Debe determinarse correctamente si ese religioso con distintas funciones puede impartir sacramentos (siempre y cuando al menos una de sus funciones se lo permita)
4. Para determinar si es buen religioso o malo, debe considerarse el criterio menos favorable. Por ejemplo si para alguna de las funciones se determina que es un mal religioso, prevalecerá esta determinación sobre las demás.
5. Debe poder funcionar correctamente el "castigo" del punto 3.2
6. Los fieles pueden solicitar un sacramento que sea otorgado por un religioso. Si el religioso no puede administrarlo, el programa actuará concordantemente.
   Y cuando el religioso puede dar sacramentos, simplemente lo administra (no definimos qué más ocurre por el momento, en un futuro se cobrará un arancel).

-Por el momento no se pide reformular las demás consultas.

>No es obligatoria la implementación de este apartado para la aprobación del examen

## 5. Ideas futuras (fuera del parcial escrito y para proponer en un examen oral si se le pide)

1. La iglesia está pensando en pagar a un mismo religioso pero no sólo en pesos, sino en diferentes monedas; a veces pagaría en criptos, otras en pesos, etc etc. ¿Cómo se modifica el diseño?
2. Arancelar la administración de sacramentos, lo recaudado irá a las arcas de la iglesia (mejor dicho a sus cuentas).

>Recuerde que este último punto 5 *no* es exigible para el presente examen


