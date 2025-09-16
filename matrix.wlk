object neo{
    method esElElegido() = true 
    var energia = 100
    method saltar(){ energia = energia/2}
    method vitalidad() = energia / 10
}

object morfeo{
    method esElElegido() = false
    var cansado = false
    method estaCansado() = cansado
    var vitalidad = 8
    method vitalidad() = vitalidad
    method saltar(){ 
        vitalidad = (vitalidad - 1).max(0)
        cansado = not cansado
        }
}

object trinity{
    method esElElegido() = false
    method vitalidad() = 0
    method saltar(){

    }
}

object nave{
    const pasajeros = #{neo, morfeo, trinity} //Usamos un conjunto porque los personajes no se repiten en este caso
    method cantidadPasajeros() = pasajeros.size()
    method pasajeroConMayorVitalidad() = pasajeros.max({p=>p.vitalidad()})
    method estaEquilibrada()=//all evalua que todos los elementos del conjunto cumplen con una condicion
    pasajeros.map({p=>p.vitalidad() * 2}).all( 
        {v=>v.vitalidad() < pasajeros.max({p=>p.vitalidad()}).vitalidad()}
    )
    method estaElElegido() = pasajeros.any({p=>p.esElElegido()})
    method chocar() {
        pasajeros.forEach({p=>p.saltar()})
        pasajeros.clear()
    }
    method pasajerosQueNoSonElElegido() = pasajeros.filter({p=>not p.esElElegido()})
    method acelerar(){
        self.pasajerosQueNoSonElElegido().forEach({p=>p.saltar()})
    }
}



