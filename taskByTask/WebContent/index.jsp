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

    <div id="Page" class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<h3 class="text-center">
					Task by Task
				</h3>
			</div>
		</div>

		<div id="List" class="row">
			<div class="col-md-4">
				<button type="button" class="btn btn-success btn-sm">
					Adicionar
				</button>
				<h3 class="text-center">
					Doing
				</h3>
				<%
				//Lista de Tasks
				
				TaskBO tBO = new TaskBO();
				
				ArrayList<Task> list = tBO.getAllTasks();
				for(Task object:list){
					
				%> 
				<% if(object.getStatus().equals("Doing")){ %>
					<div id="Card"  class="card">
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
			</div>
			<%}%>
		</div>

		<div id="List" class="row">
			<div class="col-md-4">
				<button type="button" class="btn btn-success btn-sm">
					Adicionar
				</button>
				<h3 class="text-center">
					To Do
				</h3>
			
					<div id="Card"  class="card">
						<h5 class="card-header">
							dfdfdf
						</h5>
						<div class="card-body">
							<p class="card-text">
								sfdfdf
							</p>
						</div>
						<div class="card-footer">
							dfdf
						</div>
					</div>
				
			</div>
			
		</div>

		<div id="List" class="row">
			<div class="col-md-4">
				<button type="button" class="btn btn-success btn-sm">
					Adicionar
				</button>
				<h3 class="text-center">
					Done
				</h3>
		
					<div id="Card"  class="card">
						<h5 class="card-header">
							sdskfsm
						</h5>
						<div class="card-body">
							<p class="card-text">
								fdfdf
							</p>
						</div>
						<div class="card-footer">
							dfdf
						</div>
					</div>
				
			</div>
			
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>
