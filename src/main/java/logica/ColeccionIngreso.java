/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.util.ArrayList;
import persistencia.IngresoDAO;

/**
 * Contiene la lógica requerida para gestionar la información de los juguetes
 * @author Cielo Juliana
 */
public class ColeccionIngreso {
    private ArrayList<Ingreso> lista;
    
    /**
     * Obtiene una lista de juguetes
     * @return una estructura de datos con los datos de los juguetes requeridos
     */
    public ArrayList<Ingreso> getLista() {
        return lista;
    }
    
    /**
     * Carga la información de todos los juguetes de la base de datos
     * @return true si carga los juguetes, o false si no se logró cargar
     */
    public boolean cargarTodosLosIngresos() {
        IngresoDAO dao = new IngresoDAO();
        lista = dao.consultarIngresos();
        if (lista.size() > 0) {
            return true;
        }
        else {
            return false;
        }
    }
    
    /**
     * Guarda la información de un juguete capturada desde el formulario
     * @param j un objeto con los datos de un juguete específico
     * @return true si guarda el juguete en la base de datos, o false si no lo guarda
     */
    public boolean guardarIngreso(Ingreso j) {
        IngresoDAO dao = new IngresoDAO();
        int id = dao.guardarNuevoIngreso(j);
        if (id > 0) {
            return true;
        }
        else {
            return false;
        }
    }
}
