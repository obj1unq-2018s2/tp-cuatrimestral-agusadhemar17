import items.*
import Campeon.*

class Minions {
	var property puntosDeVida = 0 // solo para la parte 2
	var property puntosDeDanio = 0 // solo para la parte 2
	var property puntosDeAtaque = 0
	var property cantidad = 0
	var property plus = 0

	method muereMinions() {
		return self.puntosDeVida() <= self.puntosDeDanio()
	}

	method puntosDeAtaque() {
		return if(cantidad > 0){ cantidad + plus}
			else{0}
	}
	
	method defender(campeon){
		if(campeon.bloqueos() == 0  ) {campeon.puntosDeDanio(campeon.puntosDeDanio() + self.puntosDeAtaque())}
			else{campeon.bloqueos(campeon.bloqueos() -1)}
		
	}
	method reciboDanio(num){//SEGUNDA PARTE
	if(cantidad - num <= 0 )
		{cantidad = 0}
			else{ cantidad = cantidad - num}
	}		
	
	method estaMuerto(){//SEGUNDA PARTE
		return cantidad == 0
	}
}
