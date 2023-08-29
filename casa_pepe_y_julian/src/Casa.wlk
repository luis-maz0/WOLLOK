import Cuentas.*

object casa{
	var viveres_casa = 50
	var costo_reparaciones = 0
	var cuenta 
	
	
	method hay_viveres_suficientes(){
		return viveres_casa > 40	
	}
	
	method hacer_reparaciones(){
		return costo_reparaciones > 0
	}
	
	method casa_en_orden(){
		return self.hay_viveres_suficientes() and 
			   not self.hacer_reparaciones()
	}
	method romper(_monto){
		costo_reparaciones += _monto
	}
	method get_costo_reparaciones(){
		return costo_reparaciones
	}
	
	//----------------- Utilizando cuentas ----------------
	
	method set_cuenta_gestion_gastos(_cuenta){
		cuenta = _cuenta
	} 
	
	method gastar(_monto){
		cuenta.extraer(_monto)
	}
	
	//----------------- Mantenimiento ---------------------
	//TERMINAR
	method realizar_mantenimiento(_estrategia){
		
	}
	
	
}