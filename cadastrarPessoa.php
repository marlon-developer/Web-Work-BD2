<?php  
	include("database.php");

	$db = new Data_Base();
	$db->conectar();
	$db->selecionarBanco();

	if (isset($_POST['nome'])) $nome = $_POST['nome'];
	if (isset($_POST['data_nascimento'])) $data_nascimento = $_POST['data_nascimento'];
	if (isset($_POST['sexo'])) $sexo = $_POST['sexo'];
	if (isset($_POST['email'])) $email = $_POST['email'];
	if (isset($_POST['senha'])) $senha = $_POST['senha'];
	if (isset($_POST['confirmar_senha'])) $confirmar_senha = $_POST['confirmar_senha'];

	if ($senha == $confirmar_senha)	{
		$db->inserirPessoa($nome, $data_nascimento, $sexo, $email, $senha);
		header("location:index.php");
	} else echo "As senhas nao conferem!!!";
?>