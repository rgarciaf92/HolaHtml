<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>
  
<section>
	<h2>JavaScript</h2>

	<article>	
		<header>
			<h1>Date</h1>
		</header>
			
		<div class="cnt_article">
			
			<script>
				//creamos un objeto con la fecha actual
				var fecha = new Date();
				var fechaGMT = fecha.toGMTString();
				var fechaLocale = fecha.toLocaleString();
				
				
				document.write("* Fecha Actual: <em>" + fecha + "</em><br>");
				document.write("* Fecha Actual GMT: <em>" + fechaGMT + "</em><br>");
				document.write("* Fecha Actual Locale: <em>" + fechaLocale + "</em><br>");

			</script>
			
		</div>
			
		<footer>
			Capitulo 13; pagina 316
		</footer>
			
	</article>
	
	
	
	
	
	
	
</section>

<jsp:include page="../../plantillas/foot.jsp"></jsp:include>