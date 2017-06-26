<!DOCTYPE html>
<html ng-app="myApp">
<head>
	<meta charset="utf-8">
	<title>Produtos</title>
	<script src="js/angular.js"></script>
	<script src="js/angular.min.js"></script>
	<script src="js/js.js"></script>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>
<body ng-controller="myController">
<?php
  session_start();
  include("database.php");
  $db = new Data_Base();
  $db->conectar();
  $db->selecionarBanco();

echo "<div class='jumbotron' modal='showModal' close='cancel()'>
	<hr>";

//Logado
if(isset($_GET['loginSucesso']) && $_GET['loginSucesso'] == 1){
  if ($_SESSION['idPessoa'] == 1) {
    echo"<a class='btn-primary btn-lg pull-right' href='cadastrarProduto.html'>Adicionar Produto</a>";
    echo"<a class='btn-primary btn-lg pull-right' href='deslogar.php'>Logout</a>";
  }
}

//Caso id da Sessao seja != 1
else{
    //echo "Erro!!!";
    echo "<a class='btn-primary btn-lg pull-right' href='cadastrarPessoa.html'>Cadastrar</a>
      <a class='btn-primary btn-lg pull-right' href='login2.php'>Login</a>";
}

?>
	
	<h2>Produtos</h2>
	<span class="clearfix"></span>
	<hr>
    <!--<form method="GET" action="buscar.php?buscar=true">
  	<input class="form-control" type="text" ng-model="busca" placeholder="O que voce procura ?">
    <button type="submit" class="btn btn-primary btn-block btn-large" onclick="">Buscar</button>
    </form>-->

	<table class="table table-striped">
    <thead>
      <tr>
        <th><a href="" ng-click="ordenarPor('nome')">Nome</a></th>
        <th><a href="" ng-click="ordenarPor('preco')">Preço</a></th>
        <th><a href="" ng-click="ordenarPor('marca')">Marca</a></th>
        <th><a href="" ng-click="ordenarPor('data')">Data</a></th>
        <th><a href="" ng-click="ordenarPor('categoria')">Categoria</a></th>
      </tr>
    </thead>
    

      <?php
          $db->consultarProduto();
      ?>
   
  </table>
</div>