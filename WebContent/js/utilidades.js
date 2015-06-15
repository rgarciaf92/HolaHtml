/***********************************************
 * Funciones para usar en todo el proyecto
 * 
 ***********************************************/



	
/*****************************************
	CINE DE ALMENDRALEJO (PAG 283)
******************************************/

/**
	Calcula el precio de la entrada del Cine de Almendralejo
	@param dia: Dia de la semana escrito en minusculas, ej: ['lunes','martes',...'domingo'] 
	@param edad: edad de la persona que compra la entrada, formato numero entero
	@return precio en euros, null si 	
*/			
function entradas (dia,edad) {
	var precio = null;
	switch (dia) {
		case 'lunes':
			if(edad <= 35){
				precio = 2;
			} else {
				precio = 5;
			}
			break;
		case 'martes':
			if (edad <=25) {
				precio = 2;
			} else if (edad > 25 && edad <= 50) {
				precio = 5;
			} else {
				precio = 7;
			}
			break;
		case 'miercoles':
			if (edad <=18) {
				precio = 3;
			} else if (edad > 18 && edad <= 50) {
				precio = 5;
			} else {
				precio = 8;
			}
			break;
		case 'jueves':
			if (edad <= 18) {
				precio = 5;
			} else {
				precio = 7;
			}
			break;
		case 'viernes':
		case 'sabado':
		case 'domingo':
			precio = 10;
		break;
		
	}//end switch
	
	return precio;
}
//end:function entradas (dia,edad)



/**
 * Funcion para determinar si el parametro pasado es par o impar
 * @param numero numero para saber si es par
 * @return true si es par, false en caso contrario
 */
function es_par(numero){	
	resul = false;
	
	if (numero%2==0) {
		resul=true;
	};
	
	return resul;
}




/****************** FUNCIONES DATE ***********************/


/**
 * Convierte parametro fecha a formato español
 * @param date objeto tipo Date con la fecha a convertir
 * @param formato CORTO: 'dd/mm/aaaa'; LARGO: 'El 1 de enero del 2016';
 * @returns {String} cadena de texto con la fecha convertida, si falla retorna null
 */

//Formatos posibles para las fechas
const CORTO = "corto";
const LARGO = "largo";

function convertirFecha(date , formato) {
	var resultado = null;
	var meses = new Array('enero','febrero','marzo','abril','mayo','junio','julio','agosto','septiembre','octubre','noviembre','diciembre');
	
	//Implementación de la funcion
	if(date instanceof Date && (formato == CORTO || formato == LARGO)) {
		var dia = date.getDate();
		var mes = date.getMonth();
		var agno = date.getFullYear();
		if((dia>0 && dia <32) && (agno>1970))
		if (formato == CORTO) {
			if(mes>=9 && mes < 12) {
				resultado = dia + "/" + (mes+1) + "/" + agno;
			}
			else if(mes>=0 && mes <9){
				resultado = dia + "/0" + (mes+1) + "/" + agno;
			}
		} else {
			for (i=0; i<meses.length; i++) {
				if(i == mes) {
					resultado = "El " + dia + " de " + meses[i] + " del " + agno;
				} 
			}	
		}
	}
	
	return resultado;
}
