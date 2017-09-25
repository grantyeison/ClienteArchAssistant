/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Proyecto;
import Modelo.Rationaleadd;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Prometheus
 */
public class RationaleADDJPADAO implements RationaleAddDAO
{

     EntityManager em;
    EntityManagerFactory emf;

    public RationaleADDJPADAO() 
    {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    
    }
    
    @Override
    public List<Rationaleadd> listar(Proyecto pro)
    {
        Query q = em.createQuery("SELECT e FROM Rationaleadd e WHERE e.tblProyectoProID = ?1");
        q.setParameter(1, pro);
        return q.getResultList();
    }
    
    @Override
    public Rationaleadd obtenerRationale(Proyecto pro, String paso) {
        List<Rationaleadd> ratios;
        Query q = em.createQuery("select r from Rationaleadd r where r.tblProyectoProID = ?1");
        q.setParameter(1, pro);
        ratios = q.getResultList();
        if (ratios != null)
        {
            for (Rationaleadd r : ratios)
            {
                if (r.getRatAddPaso().equals(paso))
                    return r;
            }
        }
        return null;
    }

    @Override
    public void guardarRationale(Rationaleadd rata) {
      
        em.getTransaction().begin();
        if (rata.getRatAddID() != null)
        {
            em.merge(rata);
        }
        else
        {
            em.persist(rata);
        }
        em.getTransaction().commit();
    }
    
}
