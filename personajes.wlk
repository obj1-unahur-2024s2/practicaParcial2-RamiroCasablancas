class Personaje{
  const fuerza
  const inteligencia
  var rol
  method fuerza() = fuerza
  method inteligencia() = inteligencia
  method rol() = rol
  method cambiarRol(unRol) {
    rol = unRol
  }   
  method potencialOfensivo() = fuerza*10 +rol.extra()
  method esInteligente()
  method esGrosoEnSuRol()=rol.esGroso()
}

class Orco inherits Personaje {
  override method esInteligente()=false
  override method potencialOfensivo() = super() * 1.1
}
class Humano inherits Personaje {
  override method esInteligente()= self.inteligencia() > 50
}

class Rol {
  method extra() 
  method esGroso(unPersonaje)  
}
class Guerrero inherits Rol {
  override method extra()= 100
  override method esGroso(unPersonaje)= unPersonaje.fuerza()>50
}
class Cazador inherits Rol {
  const property  mascota
  override method extra()=mascota.extra()
  override method esGroso(unPersonaje)=mascota.esLonjeba()
}
class Mascota {
  const property fuerza
  var edad
  const property tieneGarras 


  method tieneGarras() = tieneGarras 
  method fuerza() = fuerza
  method edad() = edad
  method cumplirAnios() { edad +=1}  
  method extra() = if(self.tieneGarras()) fuerza else fuerza * 2
  method esLonjeba() = edad > 10
}
class Brujo inherits Rol {
  override method extra()= 0
  override method esGroso(unPersonaje)=true
}

