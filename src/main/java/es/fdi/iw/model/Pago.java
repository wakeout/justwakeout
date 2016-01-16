package es.fdi.iw.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;


@Entity
@NamedQueries({
    @NamedQuery(name="allPagos",
            query="select p from Pago p"),
    @NamedQuery(name="delPago", 
    		query="delete from Pago p where p.id = :idPago")            
})
public class Pago {
	private long id;
	private double precioIndividual;
	private Date fechaLimite;
	private String descripcion;
	private boolean pagado;
	
	@Id
    @GeneratedValue
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public double getPrecioIndividual() {
		return precioIndividual;
	}
	public void setPrecioIndividual(double precioIndividual) {
		this.precioIndividual = precioIndividual;
	}
	public Date getFechaLimite() {
		return fechaLimite;
	}
	public void setFechaLimite(Date fechaLimitePago) {
		this.fechaLimite = fechaLimitePago;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public boolean isPagado() {
		return pagado;
	}
	public void setPagado(boolean pagado) {
		this.pagado = pagado;
	}
}
