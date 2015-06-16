/**
 *   JavaScript para ejecutar en todas las paginas del proyecto
 *   Se carga en foot.jsp despues de incluir todas las librerias necesarias de JS 	
 */

//Se ejecuta cuando todo el HTML se ha cargado
$(function() {
	
	console.debug('document ready!');
	
	 $('#select').filterByText($('#textbox'), false);
	 
	 
	 console.warn('tinymce deshabilitado');
	 //tinymce.init({selector:'textarea'});
	 

	 //ASOCIAR A TODOS LOS ELEMENTOS CON 
	 //CLASE 'FECHA' EL DATEPICKER DE JQUERY UI
	 
	 //$(".fecha").datepicker();
	 $("input[data-widget='calendario']").datepicker();
	 
	 //$('input').data('widget').datepicker();
	 
	 //var calen = document.querySelector('input[data-widget]');
	 //calen.datepicker();
	 console.info('datepicker habilitado');
    
  });