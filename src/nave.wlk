object nave {
	var cantidadDeImpostores
	var cantidadDeTripulantes
	var oxigeno
	var jugadores = #{}
	method esSospechoso(unJugador){
		return unJugador.esSsospechoso()
	}
	method aumentarNivelDeOxigeno(cantidad){
		oxigeno += cantidad
	}
	method disminuirNivelDeOxigeno(cantidad){
		oxigeno -= cantidad
		if(oxigeno == 0){self.ganaronLosImpostores() }
	}
	method alguienTieneTuboDeOxigeno(){
		return jugadores.any({unTripulante => unTripulante.tieneEnSuMochila("tubo de oxigeno")})
	}
	method usarTuboDeOxigeno() {
		const jugador = jugadores.find{ jugador => jugador.tieneItem("Tubo de oxigeno") }
		jugador.usarItem("Tubo de oxigeno")
	}
	method jugadorCualquiera() {
		return jugadores.anyOne()
	}
	method tareaCompletada(){
		if(self.todosLosTripulantesCompletarLasTareas()){
		self.ganaronLosTripulantes() 
		}
	}
	method todosLosTripulantesCompletarLasTareas(){
		return jugadores.forEach({unTripulante => unTripulante.completoSusTareas()})
	}
	method realizarVotacion(){
		const jugadoresVotados = jugadores.map({unJugador => unJugador.votar()})
		const masVotado = jugadoresVotados.max({unJugador => jugadoresVotados.occurrencesOf(unJugador)})
		masVotado.expulsar()
		self.verificarGanador()
	}
	method verificarGanador(){
		self.verificarGanaronTripulantes()
		self.verificarGanaronImpostores()
	}
		method verificarGanaronTripulantes() {
		if (cantidadDeImpostores == 0) {
			self.ganaronLosTripulantes()
		}
	}
	
	method verificarGanaronImpostores() {
		if (cantidadDeImpostores == cantidadDeTripulantes) {
			self.ganaronLosImpostores()
		}
	}
	method ganaronLosTripulantes() {
		throw new Exception(message = "Ganaron los tripulantes")
	}
	
	method ganaronLosImpostores() {
		throw new Exception(message = "Ganaron los impostores")
	}
	method jugadorNoSospechoso(){
		return jugadores.min({unJugador => unJugador.nivelDeSospecha()})
	}
	method jugadorMasSospechoso(){
		return jugadores.findOrDefault({ jugador => ! jugador.esSospechoso() }, votoEnBlanco)
	}
	method jugadorConMochilaVacia(){
		return jugadores.findOrDefault({unJugador =>  unJugador.tieneMochilaVacia()},votoEnBlanco)
	}
	method expulsar(unJugador){
		jugadores.remove(unJugador)
		unJugador.expulsar()
	}
	method expulsarImpostor(){
		cantidadDeImpostores--
	}
	 method expulsarTripulante(){
		cantidadDeTripulantes--
	}
	
}

object votoEnBlanco {
	method expulsar(){
		//NO HACE NADA
	}
}



