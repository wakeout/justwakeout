package es.fdi.iw.model;


import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.validation.constraints.NotNull;



@Entity
@NamedQueries({
    @NamedQuery(name="allHitos",
            query="select h from Hito h"),
            @NamedQuery(name="unHito", 
    		query="select h from Hito h where h.id = :idHito"),
    @NamedQuery(name="delHito", 
    		query="delete from Hito h where h.id = :idHito"),
    @NamedQuery(name="buscaHito", 
     		query="select h from Hito h where h.anuncio like :nombreParam")

})
public class Hito {
	private long id;
	private String anuncio;
	private Date fecha;
	private boolean completado;
	


	public static StringBuilder getJSONString(List<Hito> l){
		StringBuilder sb = new StringBuilder("[");
		
		for (Hito h : l) {
			if (sb.length()>1) sb.append(",");
			sb.append(getSingleString(h));
		}
		
		return sb;
	}
	
	public static String getSingleString(Hito h){
		return "{ "
				+ "\"id\": \"" + h.getId() + "\", "
				+ "\"fecha\": \"" + h.getFecha() + "\", "
				+ "\"anuncio\": \""+h.getAnuncio()+"\"}";
	}
	public static Hito crearHito(String anuncio, Date fecha){
		Hito h = new Hito();
	
		h.anuncio=anuncio;
		h.fecha=fecha;
		
		return h;
		
	}

	@Id
     @GeneratedValue
     public long getId() {
       return id;
     }
	 public void setId(long id) {
			this.id = id;
	 }
	 public String getAnuncio() {
       return anuncio;
     }
	 public void setAnuncio(String anuncio) {
			this.anuncio = anuncio;
	 }
	 public Date getFecha() {
       return fecha;
     }
	 public void setFecha(Date fecha) {
			this.fecha = fecha;
	 }

	public boolean isCompletado() {
		return completado;
	}

	public void setCompletado(boolean completado) {
		this.completado = completado;
	}

}