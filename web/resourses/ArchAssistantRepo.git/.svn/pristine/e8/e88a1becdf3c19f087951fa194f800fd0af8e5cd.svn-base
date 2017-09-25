/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Preocupacion;
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
public class PreocupacionJPADAO implements PreocupacionDAO
{

    EntityManager em;
    EntityManagerFactory emf;

    public PreocupacionJPADAO()  
    {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    }


    
    @Override
    public List<Preocupacion> ListarPreocupaciones() 
    {
        List<Preocupacion> lst = null;
        Query q = em.createQuery("SELECT p FROM Preocupacion p");
        lst = q.getResultList();
        return lst;
    }

    @Override
    public List<Preocupacion> ListarPreocupacionesPorAtributo(Atributocalidad atr) 
    {
        List<Preocupacion> lst = null;
        Query q = em.createNamedQuery("SELECT p FROM Preocupacion p WHERE p.Tbl_Tactica_tacID = ?1");
        q.setParameter(1, atr);
        lst = q.getResultList();
        return lst;
    }

    
    @Override
    public void CrearPreocupacion(Preocupacion pat)  
    {
        em.getTransaction().begin();
        em.persist(pat);
        em.getTransaction().commit();
    }

    @Override
    public Preocupacion BuscarPreocupacion(int id)  
    {
        Query q = em.createNamedQuery("SELECT p FROM Preocupacion p WHERE p.preID = ?1");
        q.setParameter(1, id);
        return (Preocupacion) q.getResultList().get(0);
    }

    @Override
    public void ModificarPreocupacion(Preocupacion pre)  
    {
        if (BuscarPreocupacion(pre.getPreID()) != null)
            EliminarPreocupacion(pre);
        CrearPreocupacion(pre);
    }

    @Override
    public void EliminarPreocupacion(Preocupacion pre) 
    {
        em.getTransaction().begin();
        em.remove(pre);
        em.getTransaction().commit();
    }

    
}
