/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Preocupacion;
import Modelo.Tactica;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Prometheus
 */
public class TacticaJPADAO implements TacticaDAO
{

    EntityManager em;
    EntityManagerFactory emf;

    public TacticaJPADAO() 
    {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    }

    
    @Override
    public List<Tactica> ListarTacticas() 
    {
        List<Tactica> lst = null;
        Query q = em.createQuery("SELECT t FROM Tactica t");
        lst = q.getResultList();
        return lst;
    }

    @Override
    public void CrearTactica(Tactica tac) 
    {
        em.getTransaction().begin();
        em.persist(tac);
        em.getTransaction().commit();
    }

    @Override
    public Tactica BuscarTactica(int id)  
    {
        Query q = em.createNamedQuery("SELECT t FROM Tactica t WHERE t.tacID= ?1");
        q.setParameter(1, id);
        return (Tactica) q.getResultList().get(0);
    }

    @Override
    public void ModificarTactica(Tactica tac)  
    {
        if (BuscarTactica(tac.getTacID()) != null)
            EliminarTactica(tac);
        CrearTactica(tac);
    }

    @Override
    public void EliminarTactica(Tactica tac)
    {
        em.getTransaction().begin();
        em.remove(tac);
        em.getTransaction().commit();
    }

    @Override
    public List<Tactica> BuscarTacticaPorPreocupacion(Preocupacion pre) {
        Query q = em.createNamedQuery("SELECT t FROM Tactica t WHERE t.Tbl_Preocupacion_preID = ?1");
        q.setParameter(1, pre);
        return (List<Tactica>) q.getResultList();
    }
    
}
