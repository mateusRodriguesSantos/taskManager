import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

import java.util.ArrayList;
import java.util.Date;

import org.junit.Test;

import Bean.Task;
import Persistence.TaskCRUD;

public class testTaskCRUD {
    
    @Test
    public void testeCreate() {
        //Task(int idTask, String titulo, String status, int prioridade, String descricao, Date limite)
     
        Task t = new Task("Fazer Arroz","Doing",1, "Arroz tem que sair bom!!!",new Date());

        TaskCRUD taskCrud = new TaskCRUD();

        Boolean r = taskCrud.createTask(t);

        assertEquals(true,r);
    }

    @Test
    public void testeRead() {
        //Task(int idTask, String titulo, String status, int prioridade, String descricao, Date limite)
     
        TaskCRUD taskCrud = new TaskCRUD();
        ArrayList<Task> list = taskCrud.readAllTask();

        assertNotEquals(null, list);
    }

    @Test
    public void testeUpdate() {
        //Task(int idTask, String titulo, String status, int prioridade, String descricao, Date limite)
     
        Task t = new Task("Fazer Arroz","Doing",1, "Arroz tem que sair bom!!!",new Date());

        TaskCRUD taskCrud = new TaskCRUD();

        Boolean r = taskCrud.updateTask(t, 2);

        assertEquals(true,r);
    }

    @Test
    public void testeDelete() {
        //Task(int idTask, String titulo, String status, int prioridade, String descricao, Date limite)
     
        TaskCRUD taskCrud = new TaskCRUD();

        Boolean r = taskCrud.deleteTask(2);

        assertEquals(true,r);
    }
}
