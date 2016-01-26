package es.fdi.iw.model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;

@Entity
@NamedQueries({
    @NamedQuery(name="allNovedades",
            query="select n from Novedad n"),
    @NamedQuery(name="delNovedad", 
    		query="delete from Novedad n where n.id = :idNovedad")
})
public class Novedad {
	private long id;
	private String mensaje;
	private String tipo;
	private Date fecha;
	private List<Usuario> usuarios;
	
	public static Novedad crearNovedad(String mensaje, String tipo){
		Novedad n = new Novedad();

		n.mensaje = mensaje;
		n.tipo = tipo;
		n.usuarios=new ArrayList<Usuario>();
		
		return n;
	}
	
	@Id
    @GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public String getMensaje() {
		return mensaje;
	}
	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	@ManyToMany(targetEntity=Usuario.class, fetch=FetchType.EAGER)
	public List<Usuario> getUsuarios() {
		return usuarios;
	}
	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
	
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	
	
}
