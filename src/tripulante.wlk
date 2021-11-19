import nave.*

class Jugador {
	var nivelDeSospecha = 40
	var tareasARealizar = []
	var mochila = []
	const color
	const personalidad
	var expulsado = true
	var impugnado = false
	method nivelDeSospecha(){
		return nivelDeSospecha
	}
	method esSospechoso(){
		return self.nivelDeSospecha() > 50
	}
	method buscarItem(unItem){
		self.agregarItemA(unItem)
	}
	method agregarItemA(unItem){
		mochila.add(unItem)
	}
	method usarItem(unItem){
	mochila.remove(unItem)	
	}
	method completoTodasLasTreas(){
		
	}
	method tieneEnSuMochila(unItem){
		return mochila.contains(unItem)
	}
	method aumentarNivelDeSospecha(cantidad){
		nivelDeSospecha += cantidad
	}
	method disminuirNivelDeSospecha(cantidad){
		nivelDeSospecha -= cantidad
	}
	method impugnarProximoVoto(){
		impugnado = true 
	}
	
	method llamarAReunionDeEmergencia(){
		nave.realizarVotacion()
	}
	method tieneMochilaVacia(){
		return mochila.isEmpty()
	}
	method expulsar(){
		nave.expulsar(self)
		self.avisarParaActualizarContadores()
		expulsado= true
	}
	method avisarParaActualizarContadores()
		
	
}
class Tripulante inherits Jugador {
	
	method realizarTarea(){
		const tarea = tareasARealizar.find({unaTarea => unaTarea.puedeSerRealizadaPor(self)})
		tarea.realizate(self)
		self.tareaCompletada(tarea)
	}
	method tareaCompletada(unaTarea){
		tareasARealizar.remove(unaTarea)
		nave.tareaCompletada()
	}
	method completoTodasSusTareas(){
		return tareasARealizar.isEmpty()
	}
	method votar(){
		if(!expulsado){
			if(impugnado){
			impugnado = false 
			return votoEnBlanco
		}else{
			return personalidad.votar()
		}		
	}else{return ""}
		}
		
	override method avisarParaActualizarContadores(){
		nave.expulsarTripulante()
	}
	
}
class Impostor inherits Jugador {
	method realizarTarea(){
		//NO HACE NADA
	}
	method completoTodasSusTareas(){
		return true
	}
	method realizarSabotaje(unSabotaje){
		unSabotaje.realizate(self)
		self.aumentarNivelDeSospecha(5)
	}
	method votar(){
		return nave.jugadorCualquiera()
	}
	override method avisarParaActualizarContadores(){
		nave.expulsarImpostor()
	}
	
}