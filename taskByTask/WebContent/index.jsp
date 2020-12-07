<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task By Task</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>
<body style="background-color: #F8F9F9;">
    
     <div class="container-fluid">
        <div class="row" style="margin-top: 200px;">
            <div class="col-12" >
                <h1 class="display-1" style="text-align: center;">Task By Task</h1> 
            </div>
            <div class="col-12">
                <div class="form-row">
                    <form class="col-6 form-group mx-auto" action="title" method="GET">
                        <input class="form-control" type="text" name="title" id=title required>
                        <p class="text-muted" style="text-align: center;">Dê um titulo para seu quadro</p>
                    	<div class="row justify-content-center">
                    		<input type="submit" value="Organizar minha vida!" class="btn btn-primary"/>
                    	</div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!--
        JS scripts
    -->
    <!--Java Script do bootstrap-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/scripts.js"></script>
</body>
</html>