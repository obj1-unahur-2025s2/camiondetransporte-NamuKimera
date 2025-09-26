import cosas.*

object camion {
  const cosasDelCamion = []

  method cargarCosasAlCamion(unaCosa) {
    cosasDelCamion.add(unaCosa)
  }
  method descargarCosasAlCamion(unaCosa) {
    cosasDelCamion.remove(unaCosa)
  }
  method peso() = 1000 + cosasDelCamion.sum({c => c.peso()})
  method pesoPar() = cosasDelCamion.all({c => c.peso() % 2 == 0})
}