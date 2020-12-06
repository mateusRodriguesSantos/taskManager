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
        <div class="row justify-content-center">
            <div class="col-md-8 ">
            <form action="viewTask" method="post">
                <div class="mb-5">
                    <input type="submit" class="btn btn-primary" value="Salvar"> 
                </div>
            </div>
            <div class="col-md-8" >
                <div class="form-group">
                    <input class="form-control" type="text" value="Make a Cake">
                    <small class="text-muted">Edite o Titulo, acima</small>
                </div>
            </div>
            <div class="col-md-8 mt-5">
                <h5>Description</h5>
                <div class="form-group">
                    <textarea class="form-control textarea" name="" id="" cols="30" rows="10">
                        Sem passeios dir penetrou dissesse arrojado absoluta sao. Frioleiras nao das recordarei excellente sao iii. Ate bom ares alli brio caso com meus acha. Ahi exposta escapar sem acoitar meu. Dou impossivel doidivanas competente vir uns. Sua tez isto qual rico moem nao. Ha tu mysterio chegueis ii obrigada ameacado quarenta exprimir ve. Viveremos de do sustentar horriveis apertando symbolica me. Sacrifical ostentacao as ou applicacao. Ja da ou haviam vindes contar. 

                        Uma intimo notado riu forcas ceo nao livres leilao. Disse tu la besta tenha ia sabia amada cruel. Eu trahir leitor ah ao mo queira. Ira desdemnao ias nao barreiras lembrasse rua. Rocha manso pae dao dizes vos madre tom racho podes. Confunda levantou historia designio parentes vou bom negocios fel. Ha no amor tuas ha move chao muda voce. Abriram ti escuras so grossas. 

                        Um na quatorze cerrados quantias resolves iv se. 
                    </textarea>
                </div>
            </div>
            <div class="col-md-8 mt-5">
                <div class="row">
                    <div class="col-md-3">
                        <h5>Date Limite</h5>
                        <div class="form-group">
                            <input class="form-control" type="date" value="2020-03-12">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <h5>Priority</h5>
                        <div class="form-group">
                            <select class="form-control" name="" id="">
                                <option value="high">Hight</option>
                                <option value="medium">Medium</option>
                                <option value="medium">Small</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8 mt-5">
                <div class="row justify-content-end">
                    <button onclick="addChecklist()" type="button" class="btnRemove btn btn-primary" style="background-color: green;">+</button>
                </div>
                <h5>Checklist</h5>
                <div class="col">
                    <ol id="checklist">
                        <li id="check1" class="mb-5">Adicionar fogo 
                            <button onclick="removeElement(1)" type="button" class="btnRemove btn btn-primary" style="float:right; background-color: red;">-</button>
                        </li>
                        <li id="check2" class="mb-5">Adicionar fogo
                            <button onclick="removeElement(2)" type="button" class="btnRemove btn btn-primary" style="float:right; background-color: red;">-</button>
                        </li>
                        <li id="check3" class="mb-5">Adicionar fogo
                            <button onclick="removeElement(3)" type="button" class="btnRemove btn btn-primary" style="float:right; background-color: red;">-</button>
                        </li>
                    </ol>
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

            var text = prompt("Adicione um tÃ­tulo a sub tarefa");

            if (text == null || text == "") {
                txt = "Nothing";
            } else {
                var lis = document.getElementById("checklist").getElementsByTagName("li");

                var lestNum = lis.length + 1

                txt = text
                var div = '<li id=check'+lestNum+' class="mb-5">'+txt+'  <button onclick="removeElement('+lestNum+')" type="button" class="btnRemove btn btn-primary" style="float:right; background-color: red;">-</button> </li> ';
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