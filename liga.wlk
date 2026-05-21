import roles.*
import candidatos.*
object liga {

    const candidatos = #{helia, astro, zoe}
    const guardianes = #{}
    var rolDestacado = inicial

    method rolDestacado() = rolDestacado

    method cambiarRolDestacado(nuevoRol) {rolDestacado = nuevoRol}

    method fuerzaTotalGuardianes() = guardianes.sum({g => g.fuerza()})

    method entrenarCandidatos() {candidatos.forEach({c => c.entrenar()})}

    method ligaSoportaAtaque(fuerza) = self.fuerzaTotalGuardianes() > fuerza * 2

    method candidatosAptosPara(rol) = candidatos.filter({ c => rol.cumpleRequisitos(c) })

    method evaluarCandidatoParaRol(candidato, rol) { 
        if (rol.cumpleRequisitos(candidato)) {
            candidatos.remove(candidato)
            guardianes.add(candidato)
        }
    }
}