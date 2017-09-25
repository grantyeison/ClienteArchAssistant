/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Beans.EscenarioBean;
import Beans.ModuloBean;
import Beans.RationaleAddBean;
import Beans.RationaleQawBean;
import Modelo.Escenario;
import Modelo.Modulo;
import Modelo.Proyecto;
import Modelo.Rationaleadd;
import Modelo.Rationaleqaw;
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
public class ProyectoJPADAO implements ProyectoDAO{

    EntityManager em;
    EntityManagerFactory emf;

    public ProyectoJPADAO() 
    {
        emf = Persistence.createEntityManagerFactory("ArchAssistantPU");
        em = emf.createEntityManager();
    }
        
    @Override
    public void CrearProyecto(Proyecto pro) 
    {
        em.getTransaction().begin();
        em.persist(pro);
        em.getTransaction().commit();
    }

    @Override
    public void ModificarProyecto(Proyecto pro) {
        em.getTransaction().begin();
        em.merge(pro);
        em.getTransaction().commit();
    }

    @Override
    public Proyecto AbrirProyecto(int id) 
    {
        Query q = em.createQuery("SELECT p FROM Proyecto p WHERE p.proID = ?1");
        q.setParameter(1, id);
        return (Proyecto) q.getResultList().get(0);
    }

    @Override
    public boolean EliminarProyecto(Proyecto pro, int usu) 
    {
        
        Query q,qmod,qesc,qrata,qratq;
        EscenarioBean esceBean = new EscenarioBean();
        ModuloBean modBean = new ModuloBean();
        RationaleAddBean rataBean = new RationaleAddBean();
        RationaleQawBean ratqBean = new RationaleQawBean();
        
        List<Modulo> modulos = modBean.Listar(pro);
        List<Escenario> escenarios = esceBean.Listar(pro);
        List<Rationaleadd> ratas = rataBean.Listar(pro);
        List<Rationaleqaw> ratqs = ratqBean.Listar(pro);
        em.getTransaction().begin();
        if (usu == pro.getTblUsuarioidUsuario().getIdUsuario())
        {
            if (modulos!=null)
            {
                for (Modulo m : modulos)
                {
                    m.setTblModuloModId(null);
                    m.setTblProyectoProID(null);
                    qmod = em.createQuery("delete from Modulo where modId = ?1");
                    qmod.setParameter(1, m.getModId());
                    qmod.executeUpdate();
                }
            }
            if (escenarios!=null)
            {
                for (Escenario e : escenarios)
                {
                    e.setTblAtributoCalidadacID(null);
                    e.setTblModuloModId(null);
                    e.setTblProyectoProID(null);
                    qesc = em.createQuery("delete from Escenario where escID = ?1");
                    qesc.setParameter(1, e.getEscID());
                    qesc.executeUpdate();
                }
            }
            if (ratas!=null)
            {
                for (Rationaleadd rata : ratas)
                {
                    rata.setTblProyectoProID(null);
                    qrata = em.createQuery("delete from Rationaleadd where ratAddID = ?1");
                    qrata.setParameter(1, rata.getRatAddID());
                    qrata.executeUpdate();
                }
            }
            if (ratqs!=null)
            {
                for (Rationaleqaw ratq : ratqs)
                {
                    ratq.setTblProyectoProID(null);
                    qratq = em.createQuery("delete from Rationaleqaw where ratQawID = ?1");
                    qratq.setParameter(1, ratq.getRatQawID());
                    qratq.executeUpdate();
                }
            }
            q = em.createQuery("delete from Proyecto where proID = ?1");
            q.setParameter(1, pro.getProID());
            q.executeUpdate();
            em.getTransaction().commit();
            return true;
        }
        else
        {
            return false;
        }
    }

    @Override
    public List<Proyecto> ListarProyectos(Usuario usu) {
        
        Query q = em.createQuery("SELECT p FROM Proyecto p WHERE p.tblUsuarioidUsuario = ?1");
        q.setParameter(1, usu);
        return q.getResultList();
    }
    
    public Proyecto Buscar(int id)
    {
        Proyecto pro = null;
        Query q = em.createQuery("SELECT p FROM Proyecto p WHERE p.proID = ?1");
        q.setParameter(1, id);
        pro = (Proyecto) q.getResultList().get(0);
        return pro;
    }
    
}
