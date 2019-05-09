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
	
	method peso() { return 2 * cantidad }
	method nivelPeligrosidad() { return 2 }
}

object arenaAGranel {
	var property peso
	
	method peso() { return peso }
	method nivelPeligrosidad() { return 1 }
}

object bateriaAntiaerea {
	var property tieneMisiles = true
	
	method peso() { return if (tieneMisiles){ 300} else{ 200}}
	method nivelPeligrosidad(){return if (tieneMisiles){ 100} else{ 0}}
}

object contenedorPortuario{
	var contiene= []
	
	method contener(cosa){contiene.add(cosa) }
	method peso(){return contiene.sum({i=>i.peso()}) + 100}
	method nivelPeligrosidad(){return if (contiene.isEmpty()){0}else{contiene.max({i=>i.nivelPeligrosidad()}).nivelPeligrosidad()}}
}

object residuosRadioactivos{
	var property peso
	
	method nivelPeligrosidad(){return 200}
}

object embalajeDeSeguridad{

	method peso(algo){return algo.peso()}
	method nivelPeligrosidad(algo){return algo.nivelPeligrosidad() / 2}
}



