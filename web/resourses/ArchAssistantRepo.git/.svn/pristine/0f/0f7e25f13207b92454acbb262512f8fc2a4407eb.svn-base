/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Beans;

import DAO.UsuarioDAO;
import DAO.UsuarioJPADAO;
import Modelo.Proyecto;
import java.util.List;
import javax.ejb.EJB;
import Modelo.Usuario;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author Prometheus
 */
public class UsuarioBean 
{
    @EJB
    private UsuarioDAO dao;
    private static final char[] CONSTS_HEX = { '0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f' };
   
    public UsuarioBean() 
    {
            dao = new UsuarioJPADAO();
    }
    
    public static String getMD5(String stringAEncriptar) {
        try
        {
           MessageDigest msgd = MessageDigest.getInstance("MD5");
           byte[] bytes = msgd.digest(stringAEncriptar.getBytes());
           StringBuilder strbCadenaMD5 = new StringBuilder(2 * bytes.length);
           for (int i = 0; i < bytes.length; i++)
           {
               int bajo = (int)(bytes[i] & 0x0f);
               int alto = (int)((bytes[i] & 0xf0) >> 4);
               strbCadenaMD5.append(CONSTS_HEX[alto]);
               strbCadenaMD5.append(CONSTS_HEX[bajo]);
           }
           return strbCadenaMD5.toString();
        } catch (NoSuchAlgorithmException e) {
           return null;
        }
    }
    
    public Usuario IniciarSesion(String usuario,String contrasena)
    {
        contrasena = getMD5(contrasena);
        
        Usuario usu = Buscar(usuario);
        if (usu != null)
        {
            if (usu.getUsuPasword().equals(contrasena))
                return usu;
        }
        return null;
    }
    
    public List<Usuario> Listar()
    {
        return dao.ListarUsuario();
    }
    
    public Usuario Buscar(String usuario)
    {
        List<Usuario> usuarios = Listar();
        for (Usuario u : usuarios)
        {
            if (u.getUsuUsuario().equals(usuario))
            {
                return u;
            }
        }
        return null;
    }
    
    public void Crear(Usuario atr)
    {
        atr.setUsuPasword(getMD5(atr.getUsuPasword()));
        dao.crearUsuario(atr);
    }
    
    public Usuario Buscar(int id)
    {
        return dao.BuscarUsuario(id);
    }
    
    public void Eliminar(Usuario atr)
    {
        dao.EliminarUsuario(atr);
    }
    
    public void Modificar(Usuario atr)
    {
        dao.ModificarUsuario(atr);
    }
    
    public void adicionarProyecto(Proyecto pro, Usuario usu)
    {
        dao.AdicionarProyecto(pro, usu);
    }
    
}
