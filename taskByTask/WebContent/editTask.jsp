<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<div class="container-fluid" style="background-color: #F8F9F9;">
		<div class="row justify-content-center">

			<div class="col-8">
				<form class="form-group" action="Save" method="get">
					<div class="">

						<div class="mb-5">
							<input type="submit" class="btn btn-primary" value="Salvar">
						</div>
					</div>
					<div class="">
						<div class="form-group">
							<input type="hidden" name="idTask" value="${Task.idTask}" /> <input
								class="form-control" type="text" name="title"
								value="<c:out value="${Task.titulo}"/>"> <small
								class="text-muted">Edite o Titulo, acima</small>
						</div>
					</div>
					<div class="mt-5">
						<h5>Priority</h5>
						<div class="form-group">
							<select class="form-control" name="status" id="">

								<c:choose>
									<c:when test="${Task.status == Doing}">
										<option value="Doing" selected="selected">Doing</option>
									</c:when>
									<c:otherwise>
										<option value="Doing">Doing</option>
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when test="${Task.status == ToDo}">
										<option value="ToDo" selected="selected">ToDo</option>
									</c:when>
									<c:otherwise>
										<option value="ToDo">ToDo</option>
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when test="${Task.status == Done}">
										<option value="Done" selected="selected">Done</option>
									</c:when>
									<c:otherwise>
										<option value="Done">Done</option>
									</c:otherwise>
								</c:choose>

							</select>
						</div>
					</div>
					<div class="mt-5">
						<h5>Description</h5>
						<div class="form-group">
							<textarea class="form-control textarea" name="description" id=""
								cols="" rows="">
	                        <c:out value="${Task.descricao}" />
	                    </textarea>
						</div>
					</div>
					<div class="mt-5">
						<div class="row">
							<div class="col-md-3">
								<h5>Date Limite</h5>
								<div class="form-group">
									<input class="form-control" name="date" type="date"
										value="${Task.limite}">
								</div>
							</div>
							<div class="col-md-4">
								<h5>Priority</h5>
								<div class="form-group">
									<select class="form-control" name="priority" id="">

										<c:choose>
											<c:when test="${Task.prioridade == 1}">
												<option value="1" selected="selected">Hight</option>
											</c:when>
											<c:otherwise>
												<option value="1">Hight</option>
											</c:otherwise>
										</c:choose>

										<c:choose>
											<c:when test="${Task.prioridade == 2}">
												<option value="2" selected="selected">Medium</option>
											</c:when>
											<c:otherwise>
												<option value="2">Medium</option>
											</c:otherwise>
										</c:choose>

										<c:choose>
											<c:when test="${Task.prioridade == 3}">
												<option value="3" selected="selected">Small</option>
											</c:when>
											<c:otherwise>
												<option value="3">Small</option>
											</c:otherwise>
										</c:choose>

									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="mt-5">
						<div class="row justify-content-end">
							<button onclick="addChecklist()" type="button"
								class="btnRemove btn btn-primary"
								style="background-color: green;">+</button>
						</div>
						<h5>Checklist</h5>

						<div class="">
							<ol id="checklist">
								<c:forEach items="${listCheck}" var="item">
									<li id="check${item.idTask}" class="mb-5">${item.name} <input
										type="hidden" name="list" value="${item.name}" />
										<button onclick="removeElement(${item.idTask})" type="button"
											class="btnRemove btn btn-primary"
											style="float: right; background-color: red;">-</button>
									</li>
								</c:forEach>
							</ol>
						</div>


					</div>
				</form>
			</div>

		</div>


	</div>

	<!--
        JS scripts
    -->
	<script>
        function addChecklist(){

            var text = prompt("Adicione um titulo a sub tarefa");

            if (text == null || text == "") {
                txt = "Nothing";
            } else {
                var lis = document.getElementById("checklist").getElementsByTagName("li");

                var lestNum = lis.length + 1

                txt = text
                
                var div = '<li id=check'+lestNum+' class="mb-5">'+txt+
                '<input type="hidden" name="list" value="'+txt+'"/>'+ 
                '<button onclick="removeElement('+lestNum+')" type="button" class="btnRemove btn btn-primary" style="float:right; background-color: red;">-</button> </li> ';
                
                var element =  document.getElementById("checklist");
                element.innerHTML =  element.innerHTML + div;
            }
        }

    
        function removeElement(elementId) {
            var element = document.getElementById("check"+elementId);
            element.parentNode.removeChild(element);
         }

       
    </script>

	<!--Java Script do bootstrap-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>