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

	$senha_c = sha1(
		sha1("criptografia_nivel.1".
		sha1("nivel_2".
		sha1("n3.criptografia".
		sha1("hello.4n".
		sha1("criptografado_comsucesso".$senha))))));

	if ($senha == $confirmar_senha)	{
		$db->inserirPessoa($nome, $data_nascimento, $sexo, $email, $senha_c);
		header("location:index.php");
	} else echo "As senhas nao conferem!!!";
?>