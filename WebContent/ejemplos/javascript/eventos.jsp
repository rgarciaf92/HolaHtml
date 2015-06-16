<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>
  
<section>
	<h2>Eventos</h2>

	<article>	
		<header>
			<h1>Onclick en etiqueta</h1>
		</header>
			
		<div class="cnt_article">
			<i class="fa fa-venus-mars fa-4x" onclick="alert('pulsar icono')"></i>
		</div>
			
		<footer>
			Capitulo 14; pagina 328
		</footer>
			
	</article>
	<article>	
		<header>
			<h1>Onclick en el objeto con javascript</h1>
		</header>
		
		<div class="cnt_article">
			<i class="fa fa-venus-mars fa-4x" id="btn_menu"></i>
			<script>
				var btn_menu = document.getElementById("btn_menu");
				btn_menu.onclick = function() {
					alert('Boton pulsado, evento relacionado con javascript');
				}
			</script>
			
		</div>
			
		<footer>
			Capitulo 14; pagina 328
		</footer>
			
	</article>
	<article>	
		<header>
			<h1>Asociar evento con Listener</h1>
		</header>
		
		<div class="cnt_article">
			<i class="fa fa-venus-mars fa-4x"></i>
			<i class="fa fa-venus-mars fa-4x"></i>
			<i class="fa fa-venus-mars fa-4x"></i>
			<i class="fa fa-venus-mars fa-4x"></i>
			<script>
				//Declaramos una referencia a la funcion
				var referencia_funcion_saluda = function saluda() {
					alert("Hola");
				}
				
				var listaBotones = document.getElementsByTagName("i");
				//Recorro todos los elementos para asociarle el listener
				for(i=0; i<listaBotones.length; i++) {
					listaBotones[i].addEventListener("click", referencia_funcion_saluda);
				}
				
				
				
			</script>
			
		</div>
			
		<footer>
			Capitulo 14; pagina 328
		</footer>
			
	</article>
	<article>	
		<header>
			<h1>Mostrar eventos en TextArea</h1>
		</header>
		
		<div class="cnt_article">
			<div class="clearfix cnt_cols">
				<div class="col1">
					<textarea id="txt" cols="50" rows="20"></textarea>
				</div>
				<div class="col2">
					<input type="button" id="boton" value="Pulsame">
					<input type="button" id="clear" value="Limpiar">
					<select id="selec">
						<option value="bio">Bilbao</option>
						<option value="bar">Barakaldo</option>
					</select>
					<input type="text" id="texto">
					<input type="radio">
					<input type="checkbox">
				</div>
			</div>
			
			<script type="text/javascript">
				//Buscar objetos por su ID
				var txt = document.getElementById("txt");
				var boton = document.getElementById("boton");
				var clear = document.getElementById("clear");
				var selec = document.getElementById("selec");
				
				boton.onclick = function(event) {
					console.debug('Boton Pulsado');
					txt.value += 'Boton Pulsado[x,y] ['+ event.x +','+ event.y +']\n';
				}
				
				clear.onclick = function(event) {
					console.debug('Boton pulsado');
					txt.value = '';
				}
				
				selec.onchange = function(event) {
					console.debug('Selec ha cambiado');
					var indice = selec.selectedIndex;
					var texto = selec.options[indice].text;
					var valor = selec.options[indice].value;
					txt.value += 'opcion cambiada: '+ texto + '['+ valor +']\n';
				}
			</script>
		</div>
			
		<footer>
			Sin Referencia
		</footer>
			
	</article>

</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>