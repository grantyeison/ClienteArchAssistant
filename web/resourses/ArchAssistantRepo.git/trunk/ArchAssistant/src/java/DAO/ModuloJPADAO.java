/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Modulo;
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
public class ModuloJPADAO implements ModuloDAO
{

    EntityManager em;
    EntityManagerFactory emf;


    public ModuloJPADAO() 
    {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    }
    
    @Override
    public List<Modulo> ListarModulos(Proyecto proy) 
    {
        Query q = em.createQuery("SELECT m FROM Modulo m WHERE m.tblProyectoProID = ?1");
        q.setParameter(1, proy);
        return q.getResultList();
        
    }

    @Override
    public void CrearModulo(Modulo mod) 
    {
        em.getTransaction().begin();
        em.persist(mod);
        em.getTransaction().commit();
    }

    @Override
    public Modulo BuscarModulo(int id) 
    {
        /*Query q = em.createNamedQuery("SELECT m FROM Modulo m WHERE m.modId = ?1");
        q.setParameter(1, id);
        return (Modulo) q.getResultList().get(0);*/
        Modulo mod = new Modulo();
        mod = em.find(mod.getClass(), id);
        return mod;
    }

    @Override
    public void ModificarModulo(Modulo mod) 
    {
        em.getTransaction().begin();
        em.merge(mod);
        em.getTransaction().commit();
    }

    @Override
    public void EliminarModulo(Modulo mod) 
    {
        em.getTransaction().begin();
        em.remove(mod);
        em.getTransaction().commit();
    }

    @Override
    public Modulo BuscarModuloDescomposicion(Proyecto Proy) {
        Query q = em.createQuery("SELECT m FROM Modulo m WHERE m.tblProyectoProID = ?1 AND m.modFinal=?2");
        q.setParameter(1, Proy);
        q.setParameter(2, "Descomposicion");
        return (Modulo)q.getResultList().get(0);
        //Modulo mod = new Modulo();
        //mod = em.find(mod.getClass(), id);
        
        //return mod;
    }
    
}
