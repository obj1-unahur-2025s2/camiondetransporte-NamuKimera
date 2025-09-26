import cosas.*

object camion {
  const cosasDelCamion = []

  method cargarCosasAlCamion(unaCosa) {
    cosasDelCamion.add(unaCosa)
  }
  method descargarCosasAlCamion(unaCosa) {
    cosasDelCamion.remove(unaCosa)
  }
  method pesoTotal() = 1000 + cosasDelCamion.sum({c => c.peso()})
  method pesoPar() = cosasDelCamion.all({c => c.peso() % 2 == 0})
  method consultarPesoDeterminado(unValor) = cosasDelCamion.any({c => c.peso() == unValor})
  method primerCosaPeligrosa(unValor) = cosasDelCamion.first(self.cosasDelCamionPeligrosas(unValor))
  method cosasDelCamionPeligrosas(unValor) = cosasDelCamion.filter({c => c.peligrosidad() >= unValor})
  method consultarCosasPeligrosas(unaCosa) = cosasDelCamion.filter({c => c.peligrosidad() >= unaCosa.peligrosidad()})
  method excesoPeso() = self.pesoTotal() > 2500
  method autorizadoParaViajar(viajeActual) = !self.excesoPeso() && !self.excesoPeligrosidad(viajeActual)
  method excesoPeligrosidad(unValor) = cosasDelCamion.any({c => c.peligrosidad() >= unValor})
}