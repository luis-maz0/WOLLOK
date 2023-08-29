
object cuenta_corriente{
	var saldo = 500; 
	
	method depositar(_monto){
		saldo += _monto
	}
	method extraer(_monto){
		saldo -= _monto
	}
	method get_saldo(){
		return saldo
	}
}

object cuenta_con_gastos{
	var saldo = 0; 
	var costo_operacion = 20
	
	method set_costo_operacion(_costo){
		costo_operacion = _costo
	}
	
	method depositar(_monto){
		saldo += _monto - costo_operacion
	}
	method extraer(_monto){
		saldo -= _monto
	}
	method get_saldo(){
		return saldo
	}
}

object cuenta_combinada{
	
	method depositar(_monto){
		cuenta_con_gastos.depositar(_monto) 
	}
	method extraer(_monto){
		if (cuenta_con_gastos.get_saldo() > _monto){
			cuenta_con_gastos.extraer(_monto)			
		} 
		else cuenta_corriente.extraer(_monto)
	}
	method get_saldo(){
		return cuenta_con_gastos.get_saldo() + 
			   cuenta_corriente.get_saldo()
	}
}


