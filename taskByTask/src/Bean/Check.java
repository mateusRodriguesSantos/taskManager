package Bean;

public class Check {
	private int idTask;
	private String name;
	private int task_idTask;
	
	
	public Check() {

	}
	
	public Check(int idTask, String name, int task_idTask) {
		super();
		this.idTask = idTask;
		this.name = name;
		this.task_idTask = task_idTask;
	}
	
	public Check(String name, int task_idTask) {
		super();
		this.name = name;
		this.task_idTask = task_idTask;
	}
	
	public int getIdTask() {
		return idTask;
	}
	public void setIdTask(int idTask) {
		this.idTask = idTask;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getTask_idTask() {
		return task_idTask;
	}
	public void setTask_idTask(int task_idTask) {
		this.task_idTask = task_idTask;
	}
	
	
}
