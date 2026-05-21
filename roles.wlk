object ayudante {
    var fuerzaMinima = 0
    var fuerzaMaxima = 100

    method cumpleRequisitos(candidato) = candidato.fuerza() >= self.fuerzaMinima() && candidato.fuerza() <= self.fuerzaMaxima()

    method fuerzaMinima() = fuerzaMinima
    method fuerzaMaxima() = fuerzaMaxima

    method cambiarFuerzaMinima(nuevoValor) {fuerzaMinima = nuevoValor}
    method cambiarFuerzaMaxima(nuevoValor) {fuerzaMaxima = nuevoValor}
}
object estratega {
    method cumpleRequisitos(candidato) = candidato.tieneEstudiosAvanzados()
}
object inicial {
    method cumpleRequisitos(candidato) = true
}