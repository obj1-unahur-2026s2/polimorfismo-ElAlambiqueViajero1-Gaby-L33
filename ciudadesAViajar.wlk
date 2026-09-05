import alambiqueViajero1.*

/*
El recuerdo típico de París es un llavero de la torre eiffel.
*/
object paris{
    method recuerdo() = "llavero de la Torre Eiffel" 

    method viajar(){
        if(luke.vehiculo().combustible() >= 10){
            luke.vehiculo().viajar()
            luke.cambiarRecuerdo(self.recuerdo())
            luke.cambiarCiudadHomenajeada(self)
            luke.sumarLugarVisitado()
        }
        else{
            console.println("No hay suficiente combustible para viajar a París.")
        }
    }
}

/*
Buenos Aires tiene como recuerdo típico un mate, 
pero dependiendo de quién sea el presidente puede 
traerse un "mate con yerba" o "mate sin yerba".
*/

object buenosAires{
    var recuerdoActual = "mate con yerba"

    method recuerdo() = recuerdoActual 

    method puebloEligePresidenteBueno(){
        recuerdoActual = "mate con yerba"
    }

    method puebloEligePresidenteMalo(){
        recuerdoActual = "mate sin yerba"
    }

    method viajar(){
        if(luke.vehiculo().esVeloz()){
            luke.vehiculo().viajar()
            luke.cambiarRecuerdo(self.recuerdo())
            luke.cambiarCiudadHomenajeada(self)
            luke.sumarLugarVisitado()
        }
        else{
            console.println("El vehículo no es lo suficientemente veloz para viajar a Buenos Aires.")
        }
    }
}

/*
El recuerdo típico de Bagdad puede cambiar, en algún 
momento pudo haber sido un bidón con petróleo crudo, 
alguna de las armas de destrucción masiva que nunca se 
encontraron o una réplica de los míticos jardines colgantes 
de Babilonia. O tal vez en el momento que viaje Luke sea 
otro diferente. 
*/

object bagdad{
    var recuerdoActual = "bidón de crudo"

    method recuerdo() = recuerdoActual

    method cambiarRecuerdo(nuevoRecuerdo){
        recuerdoActual = nuevoRecuerdo
    }

    method viajar(){
        luke.vehiculo().viajar()
        luke.cambiarRecuerdo(self.recuerdo())
        luke.cambiarCiudadHomenajeada(self)
        luke.sumarLugarVisitado()
    }
}

/*
Las Vegas, mas que tener algo típico propio, hace 
"homenaje" a otros lugares. Por ejemplo, si es visitada 
cuando se está conmemorando a París, el recuerdo es 
también el llavero de la torre eiffel y si se estuviera 
recordando a Buenos Aires, sería el mate. 
*/

object lasVegas{
    method recuerdo() = luke.ciudadHomenajeada().recuerdo()

    method viajar(){
        luke.ciudadHomenajeada().viajar()
    }
}

/*
Crear también una ciudad más, respetando lo indicado anteriormente.
*/

object rioDeJanerio{
    method recuerdo() = "figurita del cristo redenton" 

    method viajar(){
        if(luke.vehiculo().combustible() > 20){
            luke.vehiculo().viajar()
            luke.cambiarRecuerdo(self.recuerdo())
            luke.cambiarCiudadHomenajeada(self)
            luke.sumarLugarVisitado()
        }
        else{
            console.println("No hay suficiente combustible para viajar a Río de Janeiro.")
        }
    }
}