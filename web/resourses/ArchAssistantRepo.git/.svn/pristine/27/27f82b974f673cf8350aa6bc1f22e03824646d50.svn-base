/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Proyecto;
import Modelo.Rationaleqaw;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Prometheus
 */
public class RationaleQAWJPADAO implements RationaleQawDAO
{

    EntityManager em;
    EntityManagerFactory emf;

    public RationaleQAWJPADAO() 
    {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    }
    
    @Override
    public List<Rationaleqaw> listar(Proyecto pro)
    {
        Query q = em.createQuery("SELECT e FROM Rationaleqaw e WHERE e.tblProyectoProID = ?1");
        q.setParameter(1, pro);
        return q.getResultList();
    }
    
    @Override
    public Rationaleqaw obtenerRationale(Proyecto pro, String paso) {
        List<Rationaleqaw> ratios;
        Query q = em.createQuery("select r from Rationaleqaw r where r.tblProyectoProID = ?1");
        q.setParameter(1, pro);
        ratios = q.getResultList();
        if (ratios != null)
        {
            for (Rationaleqaw r : ratios)
            {
                if (r.getRatQawPaso().equals(paso))
                    return r;
            }
        }
        return null;
    }

    @Override
    public void guardarRationale(Rationaleqaw ratq) 
    {
        em.getTransaction().begin();
        if (ratq.getRatQawID() != null)
        {
            em.merge(ratq);
        }
        else
        {
            em.persist(ratq);
        }
        em.getTransaction().commit();
    }
    
}
