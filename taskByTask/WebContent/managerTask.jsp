<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  -->

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
    <div class="row justify-content-center">
      <div class="col-6" style="background-color: aliceblue; border-radius: 10px;">
        <form action="">
        <div class="form-group" >
            <label for="titulo">Titulo</label>
            <input type="text" class="form-control" id="titulo" placeholder="Digite o titulo da Task">
        </div>
        <div class="form-group" >
          <label for="descricao">Descrição</label>
          <input type="text" class="form-control" id="descricao" placeholder="Digite a descrição da Task">
        </div>
        <div class="form-group" >
          <label for="prioridade">Prioridade</label>
          <select class="form-control" id="prioridade">
            <option value="1">High</option>
            <option value="2">Medium</option>
            <option value="3">Small</option>
          </select>
        </div>
        <div class="form-group" >
          <label for="status">Status</label>
          <select class="form-control" id="status">
            <option value="ToDo">To Do</option>
            <option value="Doing">Doing</option>
            <option value="Done">Done</option>
          </select>
        </div>
        <div class="form-group" >
          <label for="limite">Limite</label>
          <input type="date" class="form-control" id="limite">
        </div>
        <div class="row justify-content-center form-group">
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

