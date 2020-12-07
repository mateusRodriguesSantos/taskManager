<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="BO.TaskBO"%>
<%@page import="Bean.Task"%>
<%@page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Task Manager</title>

   	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	
	

  </head>
  <body style="background-color: #F8F9F9;">
  
	<div id="Titulo" class="row" style="background-color: white;">
		<div class="col-md-12">
			<h2 class="text-center">
				Task by Task
			</h2>
		</div>
	</div>
	<!-- 
		<div class="container-fluid">
	      <div class="row">
	      	<div class="col">
	      		<div class="col-3" style="float: right;">
	      			 <button type="button" style="float: right;" ><img alt="share" src="images/share48.png"/></button>
	      		</div>
	      	</div>
	      </div>
	    </div>
     -->
    <div class="container-fluid " >
	  <div class="row">
	  	<div class="col-md-12">
			<h2 class="text-center">
				<c:out value="${title}"></c:out>
			</h2>
		</div>
	  </div>
  	  <div class="row">
		<div class="col-4">
			<h5 style="text-align:center">To Do</h5>
			
				<div class="row justify-content-center">
					<a href="/taskByTask/ManagerTask?action=ToDo&title=<c:out value="${title}"></c:out>" class="btn btn-primary" style="background-color: green; border-style:none;">+</a>
				</div>
				<%
				//Lista de Tasks
				
				TaskBO tBO1 = new TaskBO();
				
				ArrayList<Task> list1 = tBO1.getAllTasks();
				for(Task object:list1){
					
				%> 
				<% if(object.getStatus().equals("ToDo")){ %>
					<div  class="card mt-3">
						<div class="card-header">
							<div class="row">
								<div class="col-6">
									<h5><%=object.getTitulo()%></h5>
								</div>
								<div class="col-6 ">
									<div class="float-right">
										<a href="/taskByTask/View?viewID=<%=object.getIdTask()%>&title=<c:out value="${title}"></c:out>">
											<img alt="eye" src="images/eye32.png">
										</a>
										<a href="/taskByTask/Deletions?deleteID=<%=object.getIdTask()%>&title=<c:out value="${title}"></c:out>">
											<img alt="delete" src="images/delete32.png">
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="card-body">
							<%if(object.getPrioridade() == 1){%>
								<p class="card-text" style="color:white; text-align:center; background-color: red;">
									Hight
								</p>
							<%}%>
							<%if(object.getPrioridade() == 2){%>
								<p class="card-text" style="text-align:center; background-color: yellow;">
									Medium
								</p>
							<%}%>
							<%if(object.getPrioridade() == 3){%>
								<p class="card-text" style="color:white; text-align:center; background-color: green;">
									Small
								</p>
							<%}%>
						</div>
						<div class="card-footer">
							<%=object.getDescricao()%>
						</div>
					</div>
				<%}%>
				<%}%>
		</div>
	

		<div class="col-4">
			<h5 style="text-align:center">Doing</h5>
			<div class="row justify-content-center">
				<a href="/taskByTask/ManagerTask?action=Doing&title=<c:out value="${title}"></c:out>" class="btn btn-primary" style="background-color: green; border-style:none;">+</a>
			</div>
				<%
				//Lista de Tasks
				
				TaskBO tBO2 = new TaskBO();
				
				ArrayList<Task> list2 = tBO2.getAllTasks();
				for(Task object:list2){
					
				%> 
				<% if(object.getStatus().equals("Doing")){ %>
					<div class="card mt-3">
						<div class="card-header">
							<div class="row">
								<div class="col-6">
									<h5><%=object.getTitulo()%></h5>
								</div>
								<div class="col-6 ">
									<div class="float-right">
										<a href="/taskByTask/View?viewID=<%=object.getIdTask()%>&title=<c:out value="${title}"></c:out>">
											<img alt="delete" src="images/eye32.png">
										</a>
										<a href="/taskByTask/Deletions?deleteID=<%=object.getIdTask()%>&title=<c:out value="${title}"></c:out>">
											<img alt="delete" src="images/delete32.png">
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="card-body">
								<%if(object.getPrioridade() == 1){%>
								<p class="card-text" style="color:white; text-align:center; background-color: red;">
									Hight
								</p>
							<%}%>
							<%if(object.getPrioridade() == 2){%>
								<p class="card-text" style="text-align:center; background-color: yellow;">
									Medium
								</p>
							<%}%>
							<%if(object.getPrioridade() == 3){%>
								<p class="card-text" style="color:white; text-align:center; background-color: green;">
									Small
								</p>
							<%}%>
						</div>
						<div class="card-footer">
							<%=object.getDescricao()%>
						</div>
					</div>
				<%}%>
				<%}%>
		</div>
		
		
		
		<div class="col-4">
			<h5 style="text-align:center">Done</h5>
			<div class="row justify-content-center">
				<a href="/taskByTask/ManagerTask?action=Done&title=<c:out value="${title}"></c:out>" class="btn btn-primary" style="background-color: green; border-style:none;">+</a>
			</div>
				<%
				//Lista de Tasks
				
				TaskBO tBO3 = new TaskBO();
				
				ArrayList<Task> list3 = tBO3.getAllTasks();
				for(Task object:list3){
					
				%> 
				<% if(object.getStatus().equals("Done")){ %>
					<div class="card mt-3">
						<div class="card-header">
							<div class="row">
								<div class="col-6">
									<h5><%=object.getTitulo()%></h5>
								</div>
								<div class="col-6 ">
									<div class="float-right">
										<a href="/taskByTask/View?viewID=<%=object.getIdTask()%>&title=<c:out value="${title}"></c:out>">
											<img alt="delete" src="images/eye32.png">
										</a>
										<a href="/taskByTask/Deletions?deleteID=<%=object.getIdTask()%>&title=<c:out value="${title}"></c:out>">
											<img alt="delete" src="images/delete32.png">
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="card-body">
							<%if(object.getPrioridade() == 1){%>
								<p class="card-text" style="color:white; text-align:center; background-color: red;">
									Hight
								</p>
							<%}%>
							<%if(object.getPrioridade() == 2){%>
								<p class="card-text" style="text-align:center; background-color: yellow;">
									Medium
								</p>
							<%}%>
							<%if(object.getPrioridade() == 3){%>
								<p class="card-text" style="color:white; text-align:center; background-color: green;">
									Small
								</p>
							<%}%>
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
