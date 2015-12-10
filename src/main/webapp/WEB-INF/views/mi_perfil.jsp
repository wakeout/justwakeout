<html>
<head>

<%@ include file="../fragments/head.jspf" %>
		<link rel="stylesheet" href="${prefix}resources/css/style_perfil.css"> 
</head>
<body class="homepage">
	<div id="page-wrapper">

		<!-- Header -->

		<%@ include file="../fragments/header.jspf" %>
		
		<!-- Main -->
		<div id="main-wrapper">
			<div class="container">

				<div class="s_perfil">
					<a><img id="i_perfil" src="${prefix}resources/images/minion.jpg"/></a>
					<br>
					<center><button type="button">Cambiar imagen de perfil</button></center>
				</div>

				<div class="info_perfil">

					<div id="datos_perfil">
					
					<div id="amigos">
						<p>Amigos</p>
							<table>
									<c:forEach var="i" begin="1" end="3">
									<tr>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a></td>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a></td>
										<td><a href="perfil"><img class="i_people"
												src="${prefix}resources/images/minion.jpg" alt="" /></a></td>
									</tr>			
									</c:forEach>
							</table>
							<a href="">Ver todos mis amigos</a>
						</div>
						
						<div id="opciones_perfil">
							<ul id="menu">
							  <li><a id="menu1" href="#">Mi Perfil</a></li>
							  <li><a id="menu2" href="#">Modificar Perfil</a></li>
							  <li><a id="menu3" href="#">Privacidad</a></li>
							</ul>
						</div>					
					
					
						<div class="mi_perfil">
						
										
						<fieldset>
  							<legend>Datos usuario</legend>
  							<div class="campos_Perfil">
								<label for="nombre_perfil">Nombre:</label> 
								<label id="nombre_perfil">${usuario.login}</label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="fecha_perfil">Fecha Nac:</label> 
								<label id="fecha_perfil">${usuario.nacimiento}</label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="prov_perfil">Provincia:</label> 
								<label id="prov_perfil">${usuario.provincia}</label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="email_perfil">Email: </label> 
								<label id="email_perfil">${usuario.email}</label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="tipo_usuario">Tipo de usuario: </label> 
								<label id=""tipo_usuario"">${usuario.rol}</label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="n_amigos">Amigos:</label> 
								<label id="n_amigos"> 0 </label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="union">Unido: </label> 
								<label id="union">10-11-2015</label>
							</div>
							</fieldset>
						</div>


						<div class="mod_perfil">
						
							<form action="${prefix}mi_perfil" method="POST">
								<fieldset>
	  							<legend>Datos usuario</legend>
	  							<div class="campos_Perfil">
									<label for="nick_perfil">Nick de usuario:</label> 
									<input id="nick_perfil" type="text" value="${usuario.login}" disabled/>
									<input type="hidden" name="nick_perfil" type="text" value="${usuario.login}"/>
								</div>
								
								<div class="campos_Perfil">
									<label for="fecha_perfil">Fecha Nac:</label> 
									<input id="fecha_perfil" name="fecha_perfil" type="date" value="${usuario.nacimiento}" />
								</div>
								<div class="campos_Perfil">
									<label for="prov_perfil">Provincia:</label> 
									<input id="prov_perfil" name="prov_perfil" type="text" value="${usuario.provincia}"/>
								</div>
								<div class="campos_Perfil">
									<label for="email_perfil">Email: </label> 
									<input id="email_perfil" name="email_perfil" type="email" value="${usuario.email}"/>
								</div>
								<div class="actualizar">
									<button id="actualizar_perfil" name="submit" type="submit">Actualizar Informacion</button>
								</div>
								</fieldset>
							</form>
							
							<form action="${prefix}mod_password" method="POST">
								<fieldset>
	  							<legend>Cambio password</legend>
	  							<div class="campos_Perfil">
									<label for="psw_actual_perfil">Password Actual:</label> 
									<input id="psw_actual_perfil" type="password" />
								</div>
								
								<div class="campos_Perfil">
								<label>Nuevo Password:</label> 
									<input id="psw_nuevo_perfil" type="password"/>
								</div>
								<div class="campos_Perfil">
									<label for="psw_nuevo2_perfil">Repite Password:</label> 
									<input id="psw_nuevo2_perfil" type="password"/>
								</div>
								<div class="actualizar">
									<button id="actualizar_password" name="submit" type="submit">Cambiar Password</button>
								</div>
								</fieldset>
							</form>
						</div>
						</div>
					</div>
					
					
				</div>
			</div>

			<!-- Footer -->
			<%@ include file="../fragments/footer.jspf" %>
		</div>

		<!-- Scripts -->
		<%@ include file="../fragments/scripts.jspf" %>
</body>
</html>
