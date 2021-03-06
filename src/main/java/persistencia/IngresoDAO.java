package persistencia;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import logica.Ingreso;

/**
 * Contiene todas las operaciones CRUD requeridas para los datos de los juguetes
 * @author Cielo Juliana
 */
public class IngresoDAO {

    /**
     * Envía la sentencia SQL para obtener la lista de todos los juguetes y estructura
     * la respuesta en una estructura de datos
     * @return una estructura de datos con los objetos de tipo juguete
     */
    public ArrayList<Ingreso> consultarIngresos() {
        ArrayList<Ingreso> lista = new ArrayList<>();
        ConexionBD con = new ConexionBD();
        ResultSet rs = con.ejecutarQuery("SELECT id, nombreIngreso, valorIngreso FROM ingreso");
        try {
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombreIngreso");
                double valor = rs.getDouble("valorIngreso");
                
                Ingreso j = new Ingreso(id, nombre, valor);
                lista.add(j);
            }
        } catch (SQLException ex) {
            con.desconectar();
            return null;
        }
        con.desconectar();
        return lista;
    }
    
    /**
     * Envía la sentencia SQL para almacenar el dato de un usuario
     * @param j un objeto de tipo Ingreso
     * @return in número indicando el id generado por la base de datos
     */
    public int guardarNuevoIngreso(Ingreso j) {
        ConexionBD con = new ConexionBD();
        String nombre = j.getNombre();
        double valor = j.getValor();
        
        
        String sql = "INSERT INTO ingreso (nombreIngreso, valorIngreso) VALUES ('"+nombre+"','"+valor+"') ";
        System.out.println(sql);
        ResultSet rs = con.ejecutarInsert(sql);
        int id = 0;
        try {
            if (rs.next()){
                id = rs.getInt(1);
            }
        } catch (SQLException ex) {
            con.desconectar();
            return 0; 
        }
        con.desconectar();
        return id;
    }
}
