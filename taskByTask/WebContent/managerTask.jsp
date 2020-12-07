<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
    <div class="container-fluid" style="background-color: white;">
      <div class="row">
      	<div class="col-12" >
	      	<h3 class="text-center">
	          Task by Task
	        </h3>
      	</div>
      </div>
    </div>
    <div class="container-fluid" >
      <div class="row mt-5 ml-5">
	      <a href="/taskByTask/title?title=<c:out value="${title}"></c:out>" class="btn btn-primary" style="color:black; border-color:black; background-color: white;">Back</a>
      </div>
    </div>
    <div class="row justify-content-center mt-3" >
      <div class="col-6">
        <form action="ManagerTask" method="post">
        <div class="form-group" >
            <label for="titulo">Titulo</label>
            <input type="text" class="form-control" name="titulo" id="titulo" placeholder="Digite o titulo da Task" required>
        </div>
        <div class="form-group" >
          <label for="descricao">Descrição</label>
          <input type="text" class="form-control" name="descricao" id="descricao" placeholder="Digite a descrição da Task" required>
        </div>
        <div class="form-group" >
          <label for="prioridade">Prioridade</label>
          <select class="form-control" name="prioridade" id="prioridade">
            <option value="1">High</option>
            <option value="2">Medium</option>
            <option value="3">Small</option>
          </select>
        </div>
        <div class="form-group" >
          <label for="status">Status</label>
     
          <input class="form-control" value="${action}" name="status" id="status" readonly/>
        </div>
        <div class="form-group" >
          <label for="limite">Limite</label>
          <input type="date" class="form-control" name="limite" id="limite" required>
        </div>
        <div class="row justify-content-center form-group">
          <input type="hidden" name="title" value="<c:out value="${title}"></c:out>">
          <input type="submit" value="Enviar" class="btn btn-primary">
        </div>
      </form>
      </div>
    </div>
    
	
    <!--Java Script do bootstrap-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>

