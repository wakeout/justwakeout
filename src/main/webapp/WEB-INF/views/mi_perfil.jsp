<html>
<head>

<%@ include file="../fragments/head.jspf" %>
		<link rel="stylesheet" href="${prefix}resources/css/style_perfil.css"> 
		<link rel="stylesheet" href="${prefix}resources/css/style_efecto.css"> 
</head>
<body class="homepage">
	<div id="page-wrapper">

		<!-- Header -->

		<%@ include file="../fragments/header.jspf" %>
		
		<!-- Main -->
		<div id="main-wrapper">
		<div class="container">
			<div id="contenido_perfil">

				<div class="s_perfil">
					<img id="i_perfil" src="usuario/imagen?id=${usuario.id}"/></a>
					<br>
				</div>

				<div class="info_perfil">

					<div id="datos_perfil">
					
					<div id="cont_amigos">
					
					<div id="amigos">
						<p>Amigos</p>
							<table>
									<c:forEach items="${amigos}" var="amigos">
									<c:if test="${amigos.borrado == false }">
										<tr>
											<td>
											<a href="${prefix}perfil/${amigos.id}">
											<img class="i_people" src="usuario/imagen?id=${amigos.id}" alt="" />
											</a>
											</td> 
									</c:if>
									</c:forEach>
							</table>
							
						</div>
						
						
						<%@ include file="../fragments/mis_amigos.jspf" %>

					</div>			
							
						<div id="opciones_perfil">
							<ul id="menu">
							  <li><a id="menu1" href="#">Mi Perfil</a></li>
							  <li><a id="menu2" href="#">Modificar Perfil</a></li>
							  <li><a id="menu3" href="#">Mi Galeria</a></li>
							</ul>
						</div>					
					
					
						<div class="mi_perfil">
						
										
						<fieldset class="estilo_campos">
  							<legend>Datos usuario</legend>
  							<div class="campos_Perfil">
								<label for="nick_perfil">Nick:</label> 
								<label id="nick_perfil"><c:out value="${usuario.login}"/></label>
							</div>
							<br>
  							<div class="campos_Perfil">
								<label for="nombre_perfil">Nombre:</label> 
								<label id="nombre_perfil"><c:out value="${usuario.nombre}"/></label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="fecha_perfil">Fecha Nac:</label> 
								<label id="fecha_perfil"><c:out value="${usuario.nacimiento}"/></label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="prov_perfil">Provincia:</label> 
								<label id="prov_perfil"><c:out value="${usuario.provincia}"/></label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="email_perfil">Email: </label> 
								<label id="email_perfil"><c:out value="${usuario.email}"/></label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="tipo_usuario">Tipo de usuario: </label> 
								<label id="tipo_usuario"><c:out value="${usuario.rol}"/></label>
							</div>
							<br>
							<div class="campos_Perfil">
								<label for="n_amigos">Amigos:</label> 
								<label id="n_amigos"> <c:out value="${namigos}"/></label>
							</div>
							</fieldset>
							
							<p class="apuntadas">Actividades en las que estoy apuntado</p>
						
						</div>

						<div class="actv_apuntadas">
							<table id="mis_actv">
								<c:forEach items="${actv}" var="a">
								<c:if test="${a.actividad.eliminado == false }">
								<a  href="actividad/${a.actividad.id}">
								<div class='img_thumb'>
									<div class='img_desc'>
										<p id='actividad'>${a.actividad.nombre}</p>
									</div>
								<img class='i_actv' src="actividad/imagen?id=${a.actividad.id}"/>
								</div>
								</a>
								</c:if>
								</c:forEach>
							</table>
							
						</div>
						<div class="mod_perfil">
						
							<form action="${prefix}mi_perfil" method="POST" enctype="multipart/form-data">
								<fieldset class="estilo_campos">
	  							<legend>Datos usuario</legend>
	  							<div class="campos_Perfil">
									<label for="nick_perfil">Nick de usuario:</label> 
									<input id="nick_perfil" type="text" value="${usuario.login}" maxlength="40" disabled/>
									<input type="hidden" name="nick_perfil" type="text" value="${usuario.login}"/>
								</div>
								<div class="campos_Perfil">
									<label for="nombre_perfil">Nombre:</label> 
									<input id="nombre_perfil" type="text" name="nombre_perfil" value="${usuario.nombre}" maxlength="40"/>
								</div>
								
								<div class="campos_Perfil">
									<label for="fecha_perfil">Fecha Nac:</label> 
									<input id="fecha_perfil" name="fecha_perfil" type="date" value="${usuario.nacimiento}"/>
								</div>
								<div class="campos_Perfil">
									<label for="prov_perfil">Provincia:</label> 
									<input id="prov_perfil" name="prov_perfil" type="text" value="${usuario.provincia}" maxlength="30"/>
								</div>
								<div class="campos_Perfil">
									<label for="email_perfil">Email: </label> 
									<input id="email_perfil" name="email_perfil" type="email" value="${usuario.email}"/>
								</div>
								<div id="upload">
		        					<span id="upfile1" style="cursor:pointer">Cambiar imagen</span>
									<input type="file" id="file1"  name="photo" style="display:none" />
					    		</div>
								<div class="actualizar">
									<button id="actualizar_perfil" name="submit" type="submit">Actualizar Informacion</button>
								</div>
								</fieldset>
							</form>
							
							<form action="${prefix}mod_password" method="POST">
								<fieldset class="estilo_campos">
	  							<legend>Cambio password</legend>
	  							<div class="campos_Perfil">
	  								<input type="hidden" name="nick_psw" value="${usuario.login}">
									<label for="psw_actual_perfil">Password Actual:</label> 
									<input id="psw_actual_perfil" type="password" name="psw_actual" maxlength="20"/>
								</div>
								
								<div class="campos_Perfil">
								<label>Nuevo Password:</label> 
									<input id="psw_nuevo_perfil" type="password" name="psw_nuevo" maxlength="20"/>
								</div>
								<div class="campos_Perfil">
									<label for="psw_nuevo2_perfil">Repite Password:</label> 
									<input id="psw_nuevo2_perfil" type="password" name="psw_nuevo_2" maxlength="20"/>
								</div>
								<div class="actualizar">
									<button id="actualizar_password" name="submit" type="submit">Cambiar Password</button>
								</div>
								</fieldset>
							</form>
						</div>
						
						<div class="mi_galeria">
						<br>
						<c:set var="hay" value="no"></c:set>
							<form method="POST" action="${prefix}subirGaleria" enctype="multipart/form-data">
							Selecciona una actividad
							<select name="id_actv">
							<c:forEach items="${registros}" var="reg">
							<c:set var="hay" value="si"/>
							<option value="${reg.actividad.id}">${reg.actividad.nombre}</option> 	
							</c:forEach>
							</select>
							<c:if test="${hay == 'si' }">
							<br>
							<br>
							<div id="upload">
		        					<span id="img_galeria" style="cursor:pointer;background-color: #7AB6DD;">Seleccionar imagen</span>
									<input type="file" id="file_galeria"  name="imagen" style="display:none" />
									
									<input type="hidden" name="id_usuario" value="${usuario.id}">
								<br>
								<br>
								Descripci�n de la imagen
								<textarea rows="3" cols="30" name="desc"></textarea>
								<br>
								
								<button type="submit" name="submit" class="btne">Subir imagen a la actividad</button>
								</c:if>
								<c:if test="${hay == 'no' }">
								<p>No est�s apuntado a ninguna actividad!</p>
								</c:if>
					    	</div>
								
							</form>
						</div>
					
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
