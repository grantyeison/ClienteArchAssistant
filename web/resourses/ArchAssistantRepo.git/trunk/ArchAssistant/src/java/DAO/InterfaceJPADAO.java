/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Interface;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Prometheus
 */
public class InterfaceJPADAO implements InterfaceDAO
{

    EntityManager em;
    EntityManagerFactory emf;

    public InterfaceJPADAO()   
    {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    }
    
    
    @Override
    public List<Interface> ListarInterfaces()  
    {
        List<Interface> lst = null;
        
        System.out.println("llegó a jpadao");
        Query q = em.createQuery("SELECT i FROM Interface i");
        lst = q.getResultList();
        return lst;
    }

    @Override
    public void CrearInterface(Interface inter)  
    {
        em.getTransaction().begin();
        em.persist(inter);
        em.getTransaction().commit();
    }

    @Override
    public Interface BuscarInterface(int id) 
    {
        Query q = em.createNamedQuery("SELECT i FROM Interface i WHERE i.intId = ?1");
        q.setParameter(1, id);
        return (Interface) q.getResultList().get(0);
    }

    @Override
    public void ModificarInterface(Interface inter) 
    {
        if (BuscarInterface(inter.getIntId()) != null)
            EliminarInterface(inter);
        CrearInterface(inter);
    }

    @Override
    public void EliminarInterface(Interface inter)  
    {
        em.getTransaction().begin();
        em.remove(inter);
        em.getTransaction().commit();
    }
    
}
