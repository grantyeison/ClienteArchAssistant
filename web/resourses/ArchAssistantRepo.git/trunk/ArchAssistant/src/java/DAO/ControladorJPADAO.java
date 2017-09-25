/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Controlador;
import Modelo.Proyecto;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Prometheus
 */
public class ControladorJPADAO implements ControladorDAO
{

    EntityManager em;
    EntityManagerFactory emf;


    public ControladorJPADAO() 
    {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    }
   
    
    @Override
    public Controlador BuscarControlador(int id) 
    {
        /*Query q = em.createNamedQuery("SELECT m FROM Modulo m WHERE m.modId = ?1");
        q.setParameter(1, id);
        return (Modulo) q.getResultList().get(0);*/
        Controlador con = new Controlador();
        con = em.find(con.getClass(), id);
        return con;
    }

    @Override
    public void EliminarControlador(Controlador con) 
    {
        em.getTransaction().begin();
        em.remove(con);
        em.getTransaction().commit();
    }
/*
    @Override
    public Controlador BuscarModuloDescomposicion(Proyecto Proy) {
        Query q = em.createQuery("SELECT m FROM Modulo m WHERE m.tblProyectoProID = ?1 AND m.modFinal=?2");
        q.setParameter(1, Proy);
        q.setParameter(2, "Descomposicion");
        return (Controlador)q.getResultList().get(0);
        //Modulo mod = new Modulo();
        //mod = em.find(mod.getClass(), id);
        
        //return mod;
    }
*/

    @Override
    public List<Controlador> ListarControlador(Proyecto proy) {
        Query q = em.createQuery("SELECT m FROM Controlador");
        q.setParameter(1, proy);
        return q.getResultList();
    }

    @Override
    public void CrearControlador(Controlador con) {
        em.getTransaction().begin();
        em.persist(con);
        em.getTransaction().commit();
    }

    @Override
    public void ModificarControlador(Controlador con) {
        em.getTransaction().begin();
        em.merge(con);
        em.getTransaction().commit();
    }    
}
