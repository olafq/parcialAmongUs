import nave.*


object reducirOxigenio  {
	 method realizate(){
		
		if(!nave.alguienTieneTuboDeOxigeno()){
			nave.disminuirNivelDeOxigeno(10)
		}else{
			nave.usarTuboDeOxigeno()
		}
	}
}
class ImpugnarAUnJugador  {
	const jugador
	 method realizate(){
			jugador.impugnarProximoVoto()	
		}
}
