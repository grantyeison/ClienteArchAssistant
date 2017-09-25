/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Atributocalidad;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Prometheus
 */
public class AtributocalidadJPADAO implements AtributoCalidadDAO
{

    EntityManager em;
    EntityManagerFactory emf;

    public AtributocalidadJPADAO() 
    {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    }
    
    
    
    @Override
    public List<Atributocalidad> ListarAtributos() 
    {
        List<Atributocalidad> lst = null;
        Query q = em.createQuery("SELECT a FROM Atributocalidad a");
        lst = q.getResultList();
        return lst;
    }

    @Override
    public void crearAtributo(Atributocalidad atr) 
    {
        em.getTransaction().begin();
        em.persist(atr);
        em.getTransaction().commit();
    }

    @Override
    public Atributocalidad BuscarAtributo(int id)  
    {
        /*Query q = em.createQuery("SELECT a FROM Atributocalidad a WHERE a.acID = ?1");
        q.setParameter(1, id);*/
        Atributocalidad atr = new Atributocalidad();
        atr = em.find(atr.getClass(), id);
        return atr;
        //return (Atributocalidad) q.getResultList().get(0);
    }

    @Override
    public void ModificarAtributo(Atributocalidad esc)  
    {
        if (BuscarAtributo(esc.getAcID()) != null)
            EliminarAtributo(esc);
        crearAtributo(esc);
    }

    @Override
    public void EliminarAtributo(Atributocalidad esc)  
    {
        em.getTransaction().begin();
        em.remove(esc);
        em.getTransaction().commit();
    }
    
}
