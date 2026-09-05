import ciudadesAViajar.*

/*
Para poder ir a las ciudades, hay diferentes restricciones 
en las que interviene el vehículo que maneja Luke, que en 
principio es el Alambique veloz:
- París, tiene que tener suficiente combustible (para 
viajar se necesita al menos 10 unidades)
- Buenos Aires, tiene que ser rápido
- Bagdad no hay restricciones
- Las Vegas: la misma restricción del lugar que se esté 
homenajeando 
*/

object luke{
    var recuerdoActual = "Ninguno"
    var vehiculoActual = alambiqueVeloz
    var ciudadHomenajeadaActual = paris
    var cantidadDeLugaresVisitados = 0

    method ciudadHomenajeada() = ciudadHomenajeadaActual

    method cambiarCiudadHomenajeada(nuevaCiudad){
        ciudadHomenajeadaActual = nuevaCiudad
    }

    method cambiarRecuerdo(recuerdoNuevo){
        recuerdoActual = recuerdoNuevo
    }

    method sumarLugarVisitado(){
        cantidadDeLugaresVisitados += 1
    }

    method vehiculo() = vehiculoActual

    method cambiarVehiculo(nuevoVehiculo){
        vehiculoActual = nuevoVehiculo
    }

    method viajarALasVegas(){

        cantidadDeLugaresVisitados += 1
    }

    method recuerdo() = recuerdoActual

    method lugaresVisitados() = cantidadDeLugaresVisitados
}

/*
Cada viaje que hace el alambique veloz consume 10 unidades
de combustible (arranca con el tanque lleno en 50 unidades). 
Puede recargar el tanque en cualquier momento. El alambique 
es un veículo rápido. 
*/

object alambiqueVeloz{
    var combustible = 50

    method combustible() = combustible

    method esVeloz() = true

    method viajar(){
        combustible = 0.max(combustible - 10)
    }

    method recargarCombustible(){
        combustible = 50
    }
}

/*
El súper chatarra especial puede tener caniones puestos o no. 
Al inicio está sin los caniones, pero cada vez que visita una ciudad, 
pone los caniones si no los tenía puestos, o los quita si ya los tenía puestos.
Su combustible es 50 si tiene los caniones puestos, si no 80 y no 
requiere recargar, siempre tiene la cantidad según la condición ya descripta.
 Nunca es rápido.
*/

object superChatarraEspecial{
    var combustible = 80
    var cañionesPuestos = false

    method combustible() = combustible

    method losCañoneEstanPuestos() = cañionesPuestos

    method esVeloz() = false

    method viajar(){
        if(not cañionesPuestos){
            cañionesPuestos = true
            combustible = 50
        }
        else{
            cañionesPuestos = false
            combustible = 80
        }
    }

}

/*
La Antigualla Blindada tiene una cantidad de gangster variable, 
arranca en 5 pero se puede cambiar por cualquier valor mayor  
igual que 1. Es rápida si tiene menos de 7 gangsters.  Siempre 
tiene 50 unidades de combustible y no se consume. Cuando visita 
una ciudad no le pasa nada, no sufre ninguna consecuencia.
*/

object antiguallaBlindada{
    var cantidadDeGansgters = 5

    method combustible() = 50

    method cambiarCantidadDeGansgters(nuevaCantidad){
        cantidadDeGansgters = 1.max(nuevaCantidad)
    }

    method esVeloz() = cantidadDeGansgters < 7

    method viajar(){
        console.println("No le sucede nada a la Antigualla 
        Blindada al viajar.")
    }
}

/*
El Todo Terreno empieza siempre con 80 de combustible y va
disminuyendo de a 10 por cada loma que pasa, si pasa mas de
3 lomas el vehiculo se vuelve lento, pero empieza rapido. 
Se debe recargar el combustible
*/

object elTodoTerreno{
    var combustible = 80
    var cantidadDeLomas = 0

    method combustible() = combustible

    method pasarLoma(){
        cantidadDeLomas += 1
    }

    method esVeloz() = cantidadDeLomas < 3

    method viajar(){
        combustible = 0.max(combustible - 10)
    }

    method recargarCombustible(){
        combustible = 80
    }

}

/*
La Ranchera Oxiadada empieza con 50 de combustible y cada vez que viaja 
consume 10, pero por cada pasajero que transporta se le multiplica su
consumo. Es un vehiculo lento que necesita recargar su combustible.
Empieza con un pasajero y ese es su minimo.
*/

object laRancheraOxidada{
    var combustible = 50
    var pasajerosAbordo = 1

    method combustible() = combustible

    method esVeloz() = false

    method viajar(){
        combustible = 0.max(combustible - 10*pasajerosAbordo)
    }

    method cambiarCantidadDePasajeros(nuevaCantidad){
        pasajerosAbordo = nuevaCantidad
    }

    method recargarCombustible(){
        combustible = 50
    }
}