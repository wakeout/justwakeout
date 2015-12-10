package es.fdi.iw.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

@Entity
@NamedQueries({
    @NamedQuery(name="allTags",
            query="select t from Tag t")
})
public class Tag {
	private long id;
	private String nombre;
	private List<Actividad> actividades;
	
	public static Tag crearTag(String nombre_tag) {
		
		Tag t = new Tag();
		t.nombre=nombre_tag;
		return t;
	}
	

	@Id
    @GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	@Column(unique=true)
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	@ManyToMany(targetEntity=Actividad.class, fetch=FetchType.EAGER)
	public List<Actividad> getEtiquetados() {
		return actividades;
	}


	public void setEtiquetados(List<Actividad> actividades) {
		this.actividades = actividades;
	}
	
	
	
}