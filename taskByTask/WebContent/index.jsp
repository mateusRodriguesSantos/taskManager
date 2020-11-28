<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="BO.TaskBO"%>
<%@page import="Bean.Task"%>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Task Manager</title>

   	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>
	<div id="Titulo" class="row">
		<div class="col-md-12">
			<h3 class="text-center">
				Task by Task
			</h3>
		</div>
	</div>
	
    <div  class="container-fluid ">
  	  <div class="row">
		<div class="col-4">
			<h1 style="text-align:center">To Do</h1>
				<%
				//Lista de Tasks
				
				TaskBO tBO1 = new TaskBO();
				
				ArrayList<Task> list1 = tBO1.getAllTasks();
				for(Task object:list1){
					
				%> 
				<% if(object.getStatus().equals("ToDo")){ %>
					<div  class="card mt-3">
						<h5 class="card-header">
							<%=object.getTitulo()%>
						</h5>
						<div class="card-body">
							<p class="card-text">
								<%=object.getPrioridade()%>
							</p>
						</div>
						<div class="card-footer">
							<%=object.getDescricao()%>
						</div>
					</div>
				<%}%>
				<%}%>
		</div>
	

		<div class="col-4">
		<h1 style="text-align:center">Doing</h1>
				<%
				//Lista de Tasks
				
				TaskBO tBO2 = new TaskBO();
				
				ArrayList<Task> list2 = tBO2.getAllTasks();
				for(Task object:list2){
					
				%> 
				<% if(object.getStatus().equals("Doing")){ %>
					<div class="card mt-3">
						<h5 class="card-header">
							<%=object.getTitulo()%>
						</h5>
						<div class="card-body">
							<p class="card-text">
								<%=object.getPrioridade()%>
							</p>
						</div>
						<div class="card-footer">
							<%=object.getDescricao()%>
						</div>
					</div>
				<%}%>
				<%}%>
		</div>
		
		
		
		<div class="col-4">
		<h1 style="text-align:center">Done</h1>
				<%
				//Lista de Tasks
				
				TaskBO tBO3 = new TaskBO();
				
				ArrayList<Task> list3 = tBO3.getAllTasks();
				for(Task object:list3){
					
				%> 
				<% if(object.getStatus().equals("Done")){ %>
					<div class="card mt-3">
						<h5 class="card-header">
							<%=object.getTitulo()%>
						</h5>
						<div class="card-body">
							<p class="card-text">
								<%=object.getPrioridade()%>
							</p>
						</div>
						<div class="card-footer">
							<%=object.getDescricao()%>
						</div>
					</div>
				<%}%>
				<%}%>
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>
