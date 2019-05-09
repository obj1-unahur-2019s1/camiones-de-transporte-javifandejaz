import cosas.*

object camion {
	const property cosas = []
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	
	method descargar(unaCosa) {
		cosas.remove(unaCosa)
	}
	
	method pesoTotal() {
		var peso = 1000
		return peso + cosas.sum({i=>i.peso()})
	}
	
	method excedidoDePeso() {
		return self.pesoTotal()> (2.5*1000)
	}
	
	method objetosPeligrosos(nivel) {
		return cosas.filter({i=>i.nivelPeligrosidad() > nivel})
	}
	
	method objetosMasPeligrososQue(cosa) {
		return cosas.filter({i=>i.nivelPeligrosidad() > cosa.nivelPeligrosidad()})	
	}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) {
		return not cosas.all({i=>i.nivelPeligrosidad() > nivelMaximoPeligrosidad}) 
	}
	
	method tieneAlgoQuePesaEntre(a, b) {
		return cosas.any({i=>i.peso().between(a, b)}) 
	}
	
	method cosaMasPesada() {
		return cosas.max({i=>i.peso()})
	}
	
	
	//este no salee
	method totalBultos() {
		return cosas.size()
	}
	
	method pesos() {
		return cosas.map({i=>i.peso()})
	}
}
