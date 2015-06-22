
</div> <!-- <div id="content"> -->

<footer>
		<div id="foot">
			<!-- Copyright -->
			<span class="copy">COPYRIGHT &copy; Ipartek</span>
			
			<!-- Enlaces de paginas estaticas -->
			<ul id="list_paginas" class="clearfix">
				<li><a href="#">Contacto</a></li>
				<li><a href="#">Aviso legal</a></li>
			</ul>
			
			<!-- Enlaces de redes sociales -->
			<ul id="list_rrss" class="clearfix">
				<li class="facebook">
					<a href="http://www.facebook.com/#" target="_blank" title="Facebook"></a>
				</li>
				<li class="twitter">
					<a href="http://www.twitter.com/#" target="_blank" title="Twitter"></a>
				</li>
				<li class="youtube">
					<a href="http://www.youtube.com/#" target="_blank" title="YouTube"></a>
				</li>
				<li class="instagram">
					<a href="http://www.instagram.com/#" target="_blank" title="Instagram"></a>
				</li>
			</ul> 
		</div>
	</footer>
	
	<!-- Boton para ir hasta arriba de la pagina  -->
	<nav id="nav_top">
		<a href="<%=request.getRequestURL() %>#container" alt="Ir inicio pagina">
			<i class="fa fa-arrow-circle-up fa-4x"></i>
		</a>
	</nav>
	

</div>	<!-- container -->

 <!--  jQuery -->
 <script src="js/jquery-2.1.4.min.js"></script>
 
 <!--  jQuery UI : User Interfaces -->
 <script src="js/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
 
 <!--  Convertir todos los TextAreas en TinyMce -->
 <script src="js/tinymce/tinymce.min.js"></script>
 
  <!--  Filter plugin -->
 <script src="js/filter_by_text.js"></script>
 
 <!-- Responsive-nav javascript -->
 <script src="/js/responsive-nav/responsive-nav.min.js"></script>
 
 <!-- Put this right before the </body> closing tag -->
<script>
  var nav = responsiveNav(".nav-collapse");
</script>
 
 <!--  Custom JavaScript despues de cargar todas las librerias  -->
 <script src="js/main.js"></script>
 
 
</body>
</html>
