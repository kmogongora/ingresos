package logica;

/**
 * Clase base
 * @author Cielo Juliana
 */
public class Ingreso {
    private int id;
    private String nombre;


    
    public Ingreso() {
    }

    
    public Ingreso(String nombre) {
        this.nombre = nombre;

    }
    
    
    public Ingreso(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
       
    }
    
    
    public int getId() {
        return id;
    }

    
    public void setId(int id) {
        this.id = id;
    }
    

    public String getNombre() {
        return nombre;
    }

    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

   
}
