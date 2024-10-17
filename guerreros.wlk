object luke {
  const property nombre = "Luke Skywalker"
  var poder = 5
  var salud = 75
  var sable = sableVerde

  method entrenar() {
    salud += 25
    poder = poder + sable.poder()
  }

  method cambiarSable(sables) {
    sable = sables
  }

  method poder() = poder
  method salud() = salud
  method esCampeon() = poder >= 30
}

object sableAzul {
  method poder() = 25 
}
object sableVerde {
  method poder() = 15 
}

object yoda {
  const property nombre = "Din Grogu"
  var salud = 30
  var poder = 50
  var usaLaFuerza = false

  method poder() = poder
  method salud() = salud
  method esCampeon() = true

  method alternarFuerza() {usaLaFuerza = !usaLaFuerza}

  method entrenar() {
    if(!usaLaFuerza){
        salud += 25
    }else{
        poder = poder * 2
    }
  }
}
object arturito {
  const property nombre = "R2-D2"
  var salud = 50
  var cantidadDeRep = 0

  method poder() = 0.max(80 - cantidadDeRep * 2)
  method salud() = salud
  method esCampeon() = cantidadDeRep.even()

  method entrenar() {
    salud += 10
    cantidadDeRep += 1
  }
}
object c3p0 {
  const property nombre = "C-3PO"
  var salud = 80
  const poder = 30
  var capacidadDeRep = 3

  method poder() = poder
  method salud() = salud
  method esCampeon() = capacidadDeRep > poder * 0.1

  method entrenar() {
    salud += 10
    capacidadDeRep += 1
  }

  method repararElHalcon() {
    if(!self.esCampeon()){
        // halconMilenario.mejorar(200, 200)
        halconMilenario.mejorarVelocidad(200)
        halconMilenario.mejorarBlindaje(200)
    }else{
        // halconMilenario.mejorar(100 * capacidadDeRep, 100 * capacidadDeRep)
        halconMilenario.mejorarVelocidad(100 * capacidadDeRep)
        halconMilenario.mejorarBlindaje(100 * capacidadDeRep)
    }
  }
}

object halconMilenario {
  var velocidad = 500
  var blindaje = 1000

  method velocidad() = velocidad
  method blindaje() =  blindaje

  method mejorar(vel, blin) {
    velocidad += vel
    blindaje += blin
  }

  method mejorarVelocidad(vel) {
    velocidad += vel
  }

  method mejorarBlindaje(blin) {
    blindaje += blin
  }
}