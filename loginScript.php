<?php
	session_start();
	include("database.php");
	$db = new Data_Base();
	$db->conectar();
	$db->selecionarBanco();
	
	if (isset($_POST['email']) && isset($_POST['senha'])) {
		$email = $_POST['email'];
		$senha = $_POST['senha'];

		$id = $db->login($email, $senha);
		if($id != -1){
			//logou
			$_SESSION['idPessoa'] = $id;
			header("location:index.php?loginSucesso=1");
		}
		else{
			header("location:login.php?loginErro=1");
			//erro
		}
	}



	


?>