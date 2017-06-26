<?php
	session_start();
	if(isset($_SESSION['idPessoa'])){
		include("database.php");

		$db = new Data_Base();
		$db->conectar();
		$db->selecionarBanco();

		if (isset($_POST['nome'])) $nome = $_POST['nome']; 
		if (isset($_POST['valor'])) $valor = $_POST['valor'];
		if (isset($_POST['marca'])) $marca = $_POST['marca'];
		if (isset($_POST['categoria'])) $categoria = $_POST['categoria'];

		$db->inserirProduto($nome, $valor, $categoria, $marca, $_SESSION['idPessoa']);
		header("location:index.php?loginSucesso=1");	
	}
	else{
		echo "Voce nao esta logado";
	}		
?>