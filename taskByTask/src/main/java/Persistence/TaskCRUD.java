package Persistence;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import Bean.Task;

/**
 * CRUD of Task
 *
 * @author Mateus Rodrigues
 * @version 1.0
 * @since 2020-11-21
 */

public class TaskCRUD {

     /**
     * This method make a task object in database
     * @param task: a task object
     */
    public Boolean createTask(Task task) {
        Session session = FactorySession.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(task);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if (tx != null)
                tx.rollback();
            e.printStackTrace();
            return false;
        } finally {
            session.close();
        }
    }

     /**
     * This method read all tasks in database
     * @return ArrayList<Task>
     */
    public ArrayList<Task> readAllTask() {
        Session session = FactorySession.getSessionFactory().openSession();
        Transaction tx = null;
        try {

            ArrayList<Task> result = new ArrayList<Task>();
            tx = session.beginTransaction();
            List<?> tasks = session.createQuery("From Task").list();

            for (Iterator<?> iterator = tasks.iterator(); iterator.hasNext();) {
                Task task = (Task) iterator.next();
                System.out.println(task.getDescricao());
                Task t = new Task(task.getIdTask(), task.getTitulo(), task.getStatus(), task.getPrioridade(),
                        task.getDescricao(), task.getLimite());
                result.add(t);
            }
            tx.commit();
        } catch (Exception e) {
            if (tx != null)
                tx.rollback();
            e.printStackTrace();
            ArrayList<Task> result = new ArrayList<Task>();
            return result;
        } finally {
            session.close();
        }

        // Create List
        ArrayList<Task> list = new ArrayList<Task>();

        return list;
    }

    /**
     * This method update a task in database
     * @param task: a task object
     * @param idTask: id of task
     */
    public Boolean updateTask(Task task, Integer idTask) {
        Session session = FactorySession.getSessionFactory().openSession();
        Transaction tx = null;
        
        try {
           tx = session.beginTransaction();

           Task t = (Task)session.get(Task.class, idTask); 
           t.setTitulo(task.getTitulo());
           t.setStatus(task.getStatus());
           t.setPrioridade(task.getPrioridade());
           t.setDescricao(task.getDescricao());
           t.setLimite(task.getLimite());
           session.update(t); 

           tx.commit();
           return true;
        } catch (HibernateException e) {
           if (tx!=null) tx.rollback();
           e.printStackTrace(); 
           return false;
        } finally {
           session.close(); 
        }
    }

    /**
     * This method delete a task in database
     * @param idTask: id of task
     */
    public Boolean deleteTask(Integer idTask) {
        Session session = FactorySession.getSessionFactory().openSession();
        Transaction tx = null;
        
        try {
           tx = session.beginTransaction();

           Task task = (Task)session.get(Task.class, idTask); 
           session.delete(task); 

           tx.commit();
           return true;
        } catch (HibernateException e) {
           if (tx!=null) tx.rollback();
           e.printStackTrace(); 
           return false;
        } finally {
           session.close(); 
        }
     
    }
}
