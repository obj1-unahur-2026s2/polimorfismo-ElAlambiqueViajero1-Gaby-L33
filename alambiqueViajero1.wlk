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

    method cambiarCiudadHomenajeada(nuevaCiudad){
        ciudadHomenajeadaActual = nuevaCiudad
    }

    method vehiculo() = vehiculoActual

    method cambiarVehiculo(nuevoVehiculo){
        vehiculoActual = nuevoVehiculo
    }

    method viajarALasVegas(){

        cantidadDeLugaresVisitados += 1
    }
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

    method esVeloz() = True

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
    var combustible = 50
    var cañionesPuestos = false

    method combustible() = combustible

    method esVeloz() = True

    method viajar(){
        combustible = 0.max(combustible - 10)
    }

    method recargarCombustible(){
        combustible = 50
    }
}