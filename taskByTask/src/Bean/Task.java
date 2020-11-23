package Bean;


import java.util.Date;

/**
 * Bean of Task
 *
 * @author Mateus Rodrigues
 * @version 1.0
 * @since 2020-11-21
 */


public class Task {

    private int idTask;
    private String titulo;
    private String status;
    private int prioridade;
    private String descricao;
    private Date limite;

    public Task(){
        
    }

    /**
     * Constructor of Task Class
     */
    public Task(int idTask, String titulo, String status, int prioridade, String descricao,Date limite) {
        this.idTask = idTask;
        this.titulo = titulo;
        this.status = status;
        this.prioridade = prioridade;
        this.descricao = descricao;
        this.limite = limite;
    }

    /**
     * Constructor of Task Class
     */
    public Task(String titulo, String status, int prioridade, String descricao,Date limite) {
        this.titulo = titulo;
        this.status = status;
        this.prioridade = prioridade;
        this.descricao = descricao;
        this.limite = limite;
    }

    public Date getLimite() {
        return limite;
    }

    public void setLimite(Date limite) {
        this.limite = limite;
    }

    // Getters And Setters
    public int getIdTask() {
        return idTask;
    }

    public void setIdTask(int idTask) {
        this.idTask = idTask;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getPrioridade() {
        return prioridade;
    }

    public void setPrioridade(int prioridade) {
        this.prioridade = prioridade;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    
}
