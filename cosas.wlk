object knightRider {
    var peso = 500
    var peligrosidad = 10

    method peso() = peso
    method peligrosidad() = peligrosidad
}

object bumblebee {
    var peso = 800
    var peligrosidad = 30
    var modo = "Auto"

    method peso() = peso
    method peligrosidad() = peligrosidad
    method cambiarModoARobot() {
        modo = "Robot"
        peligrosidad = 30
    }
    method cambiarModoAAuto() {
        modo = "Auto"
        peligrosidad = 15
    }
}

object ladrillos {
    var peso = 2 * cantidad
    var property cantidad = 10
    const peligrosidad = 2

    method peso() = peso
    method peligrosidad() = peligrosidad
}

object arena {
    var peligrosidad = 1

    method peso(unValor) = unValor
    method peligrosidad() = peligrosidad
}

object bateria {
    var peso = 300
    var peligrosidad = 0
    var tieneMisiles = true

    method peso() = peso
    method peligrosidad() = peligrosidad
    method conmutarMisiles() {
        tieneMisiles = false
    }
    method verificarSiHayMisiles() {
      if(tieneMisiles) {
        peso = 300
        peligrosidad = 100
      }
      else {
        peso = 200
        peligrosidad = 0
      }
    }
}

object contenedor {
    var peso = 100
    var peligrosidad = 0
    const cosas = []

    method peso() = peso + cosas.sum({c => c.peso()})
    method peligrosidad() = peligrosidad
    method verificarPeligrosidad() {
      if (cosas.isEmpty()) {
        peligrosidad = 0
      } else {
        cosas.max({c => c.peligrosidad()})
      }
    }
}

object residuos {
    const peligrosidad = 200

    method peso(unValor) = unValor
    method peligrosidad() = peligrosidad
}