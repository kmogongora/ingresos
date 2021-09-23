/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tests;

import org.testng.Assert;
import org.testng.annotations.Test;
import persistencia.ConexionBD;
import persistencia.IngresoDAO;

/**
 *
 * @author Cielo Juliana
 */

public class TestGeneral {
    
    @Test
    public void verificarConexion() {
        ConexionBD con = new ConexionBD();
        Assert.assertTrue(con.isConectado(), "No hay conexión creada. ");
        con.desconectar();
        Assert.assertFalse(con.isConectado(), "No se cerró conexión. ");
    }

    @Test
    public void verificarCargaIngreso() {
        IngresoDAO dao = new IngresoDAO();
        Assert.assertTrue(dao.consultarIngresos().size() >=0, "No se cargaron datos. ");
    }
}
 