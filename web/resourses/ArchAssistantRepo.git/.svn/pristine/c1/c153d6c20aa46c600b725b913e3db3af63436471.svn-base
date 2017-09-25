/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Escenario;
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
public class EscenarioJPADAO implements EscenarioDAO {

    EntityManager em;
    EntityManagerFactory emf;

    public EscenarioJPADAO() {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    }

    @Override
    public List<Escenario> ListarEscenarios(Proyecto proy) {
        Query q = em.createQuery("SELECT e FROM Escenario e WHERE e.tblProyectoProID = ?1");
        q.setParameter(1, proy);
        return q.getResultList();
    }

    @Override
    public void CrearEscenario(Escenario esc) {
        em.getTransaction().begin();
        em.persist(esc);
        em.getTransaction().commit();
    }

    @Override
    public Escenario BuscarEscenario(int id) {
        Escenario esc = new Escenario();
        esc = em.find(esc.getClass(), id);
        return esc;
    }

    @Override
    public void ModificarEscenario(Escenario esc) {
        em.getTransaction().begin();
        em.merge(esc);
        em.getTransaction().commit();
    }

    @Override
    public void EliminarEscenario(Escenario esc) {
        em.getTransaction().begin();
        try {
            Escenario e = em.find(Escenario.class, esc.getEscID());
            e.getTblProyectoProID().getEscenarioList().remove(e);
            e.setTblProyectoProID(null);
            e.getTblAtributoCalidadacID().getEscenarioList().remove(e);
            //esc.setTblAtributoCalidadacID(null);
            e.getTblModuloModId().getEscenarioList().remove(e);
            //esc.setTblModuloModId(null);
            em.remove(e);
            em.getTransaction().commit();
        } catch (Exception exe) {
            em.close();
        }

    }

    @Override
    public List<Escenario> ListarEscenariosArq(Proyecto proy) {
        Query q = em.createQuery("SELECT e FROM Escenario e WHERE e.tblProyectoProID = ?1 and e.escEstado='%;%");
        q.setParameter(1, proy);
        return q.getResultList();
    }

}
