object knightRider {
    var property peso = 500
    var property peligrosidad = 10
    var property modo = "Auto"
}

object bumblebee {
    var property peso = 800
    var property peligrosidad = 30
    var property modo = "Auto"

    method cambiarModoARobot() {
        modo = "Robot"
        peligrosidad = 15
    }
    method cambiarModoAAuto() {
        modo = "Auto"
        peligrosidad = 30
    }
}

object ladrillos {
    var property peso = 2 * cantidad
    var property cantidad = 10
    var property peligrosidad = 2
}

object arena {
    var property peso = 40
    var property peligrosidad = 1
}

object bateria {
    var property peso = 300
    var property peligrosidad = 0
    var tieneMisiles = true

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
    var property peso = 100 + 
}