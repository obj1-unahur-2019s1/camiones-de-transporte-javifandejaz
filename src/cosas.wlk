object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}

object paqueteDeLadrillos {
	var property cantidad
	
	method peso() { return 2 }
	method nivelPeligrosidad() { return 2 }
}

object arenaAGranel {
	var property peso
	
	method peso() { return peso }
	method nivelPeligrosidad() { return 1 }
}

object bateriaAntiaerea {
	var tieneMisiles = true
	
	method cambiarMisiles(){tieneMisiles = false}
	method peso() { if (tieneMisiles){return 300} else{return 200}}
	method nivelPeligrosidad(){ if (tieneMisiles){return 100} else{return 0}}
}