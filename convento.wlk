// ==================== Aca agrego las monedas ====================
object relicriptos {
  var property cotizacion = 110000
  method tieneMuchoDinero(cantidad) = cantidad >= 100
}

object pesosArgentinos {
  var property cotizacion = 1
  method tieneMuchoDinero(cantidad) = cantidad >= 3000000
}

object dolaresAmericanos {
  var property cotizacion = 1500
  method tieneMuchoDinero(cantidad) = cantidad >= 2000
}

// ==================== Creo una clase con los religiosos y luego heredo para cada uno ====================
class Religioso {
  const property nombre
  var property edad
  var property aniosMeditacion
  const property monedaAhorro // relicriptos, pesosArgentinos, dolaresAmericanos
  var property sueldoBasico = 100000
  const talleHabito                //Está oculto por convenio 
  var minutosDiariosOracion = 0   //Está oculto por convenio
  var dineroAhorrado = 0         // Idem
  const esFumador               // Idem
  
  method esJoven()
  method esExperimentado()
  method puedeAdministrarSacramentos()
  method esPobre()
  method esResiliente()
  
  method esBuenReligioso() = !esFumador && minutosDiariosOracion >= 30
  method esMalReligioso() = !self.esBuenReligioso()
  
  
  method sueldo() = 
    if (self.esBuenReligioso()) 
      sueldoBasico() * 1.10 
    else 
      sueldoBasico()

  
  method tieneMuchoDinero() = monedaAhorro.tieneMuchoDinero(self.dineroAhorrado())
  
  
  method recibirPago(montoPesos) {
    const montoConvertido = montoPesos / monedaAhorro.cotizacion()
    dineroAhorrado += montoConvertido
  }
  
  method confiscarMitadAhorros() {
    dineroAhorrado = dineroAhorrado / 2
  }
}

// ==================== Heredo de religioso para los Frailes ====================
class Fraile inherits Religioso {
  override method esJoven() = edad <= 90
  override method esExperimentado() = aniosMeditacion >= 60
  override method puedeAdministrarSacramentos() = self.esJoven() && self.esExperimentado()
  override method esPobre() = !self.tieneMuchoDinero()                                        
  override method esResiliente() = self.esExperimentado()
  
  method esDisciplinado() = self.esBuenReligioso()
  
  override method sueldo() = 
    if (self.esPobre()) 
      super() * 1.20 
    else 
      super()
}

// ==================== Clase Monjes que hereda de religioso ====================
class Monje inherits Religioso {
  override method esJoven() = edad <= 70
  method esViejo() = !self.esJoven()
  override method esExperimentado() = aniosMeditacion >= 10
  override method puedeAdministrarSacramentos() = false
  override method esPobre() = true // Siempre son pobres
  override method esResiliente() = self.esViejo()
  
  method esDisciplinado() = self.esJoven()
  
  method talleGrande() = talleHabito >= 50
  method plusVestimenta() = if (self.talleGrande()) 0.10 else 0.05
  
  override method sueldo() = super() * 0.5 * self.plusVestimenta()
}

// ==================== Los sacerdotes heredan tambien de religioso ====================
class Sacerdote inherits Religioso {
  override method esJoven() = edad <= 65
  method esViejo() = !self.esJoven()
  override method esExperimentado() = true // Siempre son experimentados
  override method puedeAdministrarSacramentos() = true
  override method esPobre() = false // Nunca son pobres
  override method esResiliente() = self.esViejo()
  
  method esDisciplinado() = true
  
  override method esBuenReligioso() = true // Siempre son buenos religiosos
  
  override method sueldo() = super() * 1.50
}

// ==================== Fieles de culto ====================
class Fiel {
  const property nombre
  var property dinero
}

// ==================== Sacramentos ====================
class Sacramento {
  const property costo
}

object casamiento inherits Sacramento {}     
object bautismo inherits Sacramento {}

// ====================
object iglesia {
  var property religiososSet = #{}
  
  method agregarReligioso(religioso) {
    religiososSet.add(religioso)
  }
  
  // Consultas sobre los religiosos //
  method cantidadDeReligiosos() = religiososSet.size()
  method cantidadReligiososPobres() = religiososSet.count({r => r.esPobre()})
  method nombresReligiosos() = religiososSet.map({r => r.nombre()})
  method nombresDeExperimentadosQueAdministranSacramentos() = religiososSet.filter({ r => r.esExperimentado() && r.puedeAdministrarSacramentos() }).map({ r => r.nombre() })
  method promedioDeEdad() = religiososSet.map({ r => r.edad() }).average()
  method malosReligiosos() = religiososSet.filter({r => r.esMalReligioso()})


  // Acciones sobre los religiosos //
  method pagarSueldos() {
    religiososSet.forEach({r => r.recibirPago(r.sueldo())})
  }
  
  method castigarMalosReligiosos() {
    self.malosReligiosos().forEach({r => r.confiscarMitadAhorros()})
  }
}



//-----------------------------------¿COMO IMPLEMENTARÍA LOS PUNTOS 4?------------------------------------------------

// 4.1 Para hacer que un religioso pueda tener más de un cargo:                        
    // En lugar de que Fraile, Monje y Sacerdote sean clases que heredan de Religioso, las dejo como clases "independientes". 
    // Luego en Religioso agrego var property cargos = {} (un SET con los cargos). 
    // Para que cada religioso pueda tener más de un cargo [new Fraile(), new Sacerdote()].

// 4.2 Para saber el sueldo de una persona que tiene más de un cargo (va a cobrar el sueldo más alto): 
    // En el método sueldo() de la clase Religioso, puedo calcular el sueldo de cada cargo en su colección y agarro el máximo
    // cargos.max({c => c.sueldo()})
                  
// 4.3 Para verificar si una persona puede realizar ciertas actividades (como impartir sacramentos):
    // En el método puedeAdministrarSacramentos() hago un OR entre todos los cargos, entonces si uno puede la persona puede.
    // cargos.any({c => c.puedeAdministrarSacramentos()})

// 4.4 Para saber si es o no buen religioso (si es malo en algun cargo entonces es malo por default):
    // En esBuenReligioso() hago un AND entre todos los cargos (si no es bueno en todos los cargos entonces es malo)
    // cargos.all({c => c.esBuenReligioso()}). 

// 4.5 Acá se tiene que poder implementar el castigo (si la persona no es un buen religioso se tiene que reducir el sueldo a la mitad):
    // Ya lo tengo implementado en confiscarMitadAhorros() y castigarMalosReligiosos() en la iglesia. 
    // Solo deberia agregar para que use la nueva lógica del punto 4.4.

// 4.6 Para que se pueda cobrar un arancel en caso de que se quiera realizar un sacramento:
    // Puedo crear un método en Religioso tipo administrarSacramento(fiel, sacramento) que valide si puede administrarlo (punto 4.3)
    // Si el fiel tiene dinero suficiente para el costo del sacramento se le resta y se realiza el sacramento.



// -----------------------------------¿COMO IMPLEMENTARÍA LOS PUNTOS 5?------------------------------------------------
// 5.1 Para que cada religioso pueda ahorrar, cobrar su sueldo en diferentes monedas:
    // Puedo crear una Clase wallet, con un diccionario que pueda tener múltiples monedas simultáneamente.
    // class Wallet {
    //   const saldos = new Dictionary()  // Key: moneda, Value: cantidad}

    // Cuando la iglesia paga el sueldo, deposita directamente en la wallet del religioso, especificando el monto y la moneda.
    // En la clase religioso voy a tener que modificar para que sea algo así

    // class Religioso {
    //    const property wallet = new Wallet()
    //    method recibirPago(monto, moneda) {
    //        wallet.depositar(monto, moneda)}
    
    //    method tieneMuchoDinero(moneda) {
    //        return moneda.tieneMuchoDinero(wallet.saldo(moneda))}
    // }


    // 5.2 Para poder arancelar las actividades:
    // En el método administrarSacramento(), en lugar de que el dinero desaparezca del fiel, lo puedo sumar a una cuenta de la iglesia
    // iglesia.recibirArancel(sacramento.costo())
    // Agrego en object iglesia un atributo var dineroRecaudado = 0 y el método recibirArancel()
