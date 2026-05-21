import roles.*
import liga.*
object helia {

  method fuerza() = 22
  
  method tieneEstudiosAvanzados() = false
  
  method entrenar() {}

}
object astro {

  var cantidadArmasQueManeja = 0

  method fuerza() = cantidadArmasQueManeja * 10
  
  method tieneEstudiosAvanzados() = cantidadArmasQueManeja > 5
  
  method entrenar() { cantidadArmasQueManeja += 1 }

}
object zoe {
  const rolesAprendidos = []
  
  method fuerza() = rolesAprendidos.size() + 8
  
  method tieneEstudiosAvanzados() = rolesAprendidos.contains(estratega)
  
  method entrenar() {
    rolesAprendidos.add(liga.rolDestacado())
  }
  
}