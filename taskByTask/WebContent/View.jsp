<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task By Task</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h3 style="text-align: center;">Task By Task</h3>
            </div>
        </div>
    </div>
    <div class="container-fluid mt p-3" style=" background-color: #F8F9F9;">
        <div class="row justify-content-center" >
            <div class="col-md-8 ">
                <div class="mb-5">
                    <a href="" class="btn btn-primary" >Editar</a>
                </div>
            </div>
            <div class="col-md-8" >
                <h3><c:out value="${Task.titulo}"/></h3>
            </div>
            <div class="col-md-8 mt-5">
                <h5>Description</h5>
                <div class="">
                    <p>
                        <c:out value="${Task.descricao}"/>
                    </p>
                </div>
            </div>
            <div class="col-md-8 mt-5">
                <div class="row">
                    <div class="col-md-3">
                        <h5>Date Limite</h5>
                        <p><c:out value="${Task.limite}"/></p>
                    </div>
                    <div class="col-md-4">
                        <h5>Priority</h5>
                        
 						<c:if test = "${Task.prioridade == 1}">
 							<p style="text-align: center; color: white; background-color: red;">High</p>
 						</c:if>
 						<c:if test = "${Task.prioridade == 2}">
 							<p style="text-align: center; background-color: yellow;">Medium</p>
 						</c:if>
 						<c:if test = "${Task.prioridade == 3}">
 							<p style="text-align: center; color: white; background-color: green;">Small</p>
 						</c:if>
                        
                    </div>
                </div>
            </div>
            <div class="col-md-8 mt-5" >
                <h5>Checklist</h5>
                <div >
                	<c:forEach items="${listCheck}" var="item">
					     <div class="form-check ml-2 mt-2" style="border-bottom-style: solid; border-bottom-width: 2px; border-bottom-color: darkgrey;">
                        	<input class="form-check-input" type="checkbox" id="1">
	                        <label class="form-check-label" for="1">${item.name}</label>
                    	</div>
					</c:forEach>
                </div>
            </div>
        </div>

    </div>

	 <!--Java Script do bootstrap-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>