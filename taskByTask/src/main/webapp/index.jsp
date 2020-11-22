<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="Bean.*"%>
<%@page import="Persistence.*"%>
<%@page import="java.util.*" %>

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

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center">
				Task by Task
			</h3>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-4">

		<%
			//Lista de Tasks
			ArrayList<Task> list = new ArrayList<Task>();
			
			TaskCRUD t = new TaskCRUD();
			
			list = t.readAllTask();
			
			for(Task object:list){
				
		%> 
			<button type="button" class="btn btn-success btn-sm">
				Adicionar
			</button>
			<h3 class="text-center">
				Doing
			</h3>
			<% if(object.getStatus().equals("Doing")){ %>
				<div class="card">
					<h5 class="card-header">
						<%object.getTitulo();%>
					</h5>
					<div class="card-body">
						<p class="card-text">
							<%object.getDescricao();%>
						</p>
					</div>
					<div class="card-footer">
						<%object.getPrioridade();%>
					</div>
				</div>
			<%}%>
		</div>
		<div class="col-md-4">
			 
			<button type="button" class="btn btn-success btn-sm">
				Adicionar
			</button>
			<h3 class="text-center">
				To do
			</h3>
			<% if(object.getStatus().equals("To Do")){ %>
				<div class="card">
					<h5 class="card-header">
						<%object.getTitulo();%>
					</h5>
					<div class="card-body">
						<p class="card-text">
							<%object.getDescricao();%>
						</p>
					</div>
					<div class="card-footer">
						<%object.getPrioridade();%>
					</div>
				</div>
			<% }%>
		</div>
		<div class="col-md-4">
			 
			<button type="button" class="btn btn-success btn-sm">
				Adicionar
			</button>
			<h3 class="text-center">
				Done
			</h3>
			<% if(object.getStatus().equals("Done")){ %>
				<div class="card">
					<h5 class="card-header">
						<%object.getTitulo();%>
					</h5>
					<div class="card-body">
						<p class="card-text">
							<%object.getDescricao();%>
						</p>
					</div>
					<div class="card-footer">
						<%object.getPrioridade();%>
					</div>
				</div>
			<%}%>
		</div>
		<%}%>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>
