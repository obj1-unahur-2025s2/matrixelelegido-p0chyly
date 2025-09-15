object neo{
    method esElElegido() = true 
    var energia = 100
    method saltar(){ energia = energia/2}
    method vitalidad() = energia / 10
}

object morfeo{
    method esElElegido() = false
    var cansado = false
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
    method saltar() = null
}

object nave{
    const pasajeros = []
}