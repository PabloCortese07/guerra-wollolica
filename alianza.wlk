object alianza {
  const property ejercito = []

  method reclutar(unSoldado) {
    if(self.esAptoElSoldado(unSoldado)){
      ejercito.add(unSoldado)
    }
  }

  method esAptoElSoldado(soldado) {
    return soldado.salud() > 50 && soldado.poder() >= 25
  }
  method entrenarEjercito() {ejercito.forEach({
    soldado => soldado.entrenar()
  })}

  method cantidadDeSoldados() = ejercito.size()
  method poderDeEjercito() = ejercito.sum({soldado => soldado.poder()})

  method poderTotal() = self.poderDeEjercito() + (25 * self.cantidadDeSoldados())

  method ejercitoConPoderMayorA50() = ejercito.all({soldado => soldado.poder() > 50})

  method hayCampeon() = ejercito.any({soldado => soldado.esCampeon()})

  method esInvencible() = self.ejercitoConPoderMayorA50() || self.hayCampeon()

  method guerrerosMasDevilesQue(nivel) = ejercito.filter({soldado => soldado.salud() <= nivel}) 

  method esBatallaGanada(nivel) = self.poderTotal() > nivel 

  method poderDeGuerreroConPocaSalud() = ejercito.min({soldado => soldado.salud()}).poder()

  method poderDeGuerreroConMasSalud() = ejercito.max({soldado => soldado.salud()}).poder()

  method diferenciaDePoderes() = self.poderDeGuerreroConPocaSalud() > self.poderDeGuerreroConMasSalud()

  method nombresDeCampeones() = ejercito.filter({soldado => soldado.esCampeon()}).map({soldado => soldado.nombre()})
}





