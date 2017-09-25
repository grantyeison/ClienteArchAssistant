/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Proyecto;
import Modelo.Usuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Prometheus
 */
public class UsuarioJPADAO implements UsuarioDAO
{

    EntityManager em;
    EntityManagerFactory emf;
    
    public UsuarioJPADAO() 
    {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    }
        
    @Override
    public List<Usuario> ListarUsuario()
    {
        List<Usuario> lst = null;
        Query q = em.createQuery("SELECT u FROM Usuario u");
        lst = q.getResultList();
        return lst;
    }

    @Override
    public void crearUsuario(Usuario atr)  
    {
        em.getTransaction().begin();
        em.persist(atr);
        em.getTransaction().commit();
    }

    @Override
    public Usuario BuscarUsuario(int id)   
    {
        Query q = em.createNamedQuery("SELECT u FROM Usuario u WHERE u.idUsuario = ?1");
        q.setParameter(1, id);
        return (Usuario) q.getResultList().get(0);
    }

    @Override
    public void ModificarUsuario(Usuario esc)  
    {
        if (BuscarUsuario(esc.getIdUsuario()) != null)
            EliminarUsuario(esc);
        crearUsuario(esc);
    }

    @Override
    public void EliminarUsuario(Usuario esc)   
    {
        em.getTransaction().begin();
        em.remove(esc);
        em.getTransaction().commit();
    }
    
    @Override
    public void AdicionarProyecto (Proyecto pro, Usuario usu)
    {
        List<Proyecto> lista = usu.getProyectoList();
        lista.add(pro);
        usu.setProyectoList(lista);
    }
    
}
