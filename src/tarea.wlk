import nave.*
class Tarea{
	const itemsNesesarios = []
	
	method puedeSerRealizadaPor(unJugador){
		unJugador.tieneEnSuMochila(itemsNesesarios)
	}
	method realizate(unJugador){
		self.completate(unJugador)
		unJugador.usarItem(itemsNesesarios)
	}
	method completate(unJugador)
}


object ventilarLaNave inherits Tarea(itemsNesesarios=[""]){
	override method completate(unJugador){
		nave.aumentarNivelDeOxigeno(5)
	}
}

object arreglarTableroelectrico inherits Tarea(itemsNesesarios=["llave inglesa"]){
	override method  completate(unJugador){
		unJugador.aumentarNivelDeSospecha(10)
	}
}
object sacarLaBasura inherits Tarea(itemsNesesarios=["escoba","bolsa de consorcio"]){
	override method completate(unJugador){
		unJugador.disminuirNivelDeSospecha(4)
	}
}


