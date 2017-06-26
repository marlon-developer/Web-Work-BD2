<?php
	class Data_Base{
		private $conexao;
		
		function conectar(){
			// Criação da conexão
			$ip = "127.0.0.1:8086";
			$usuario = "user";
			$senha = "sistemasdeinformacao";
			
			$this->conexao = new mysqli($ip, $usuario, $senha);
			
			// Verificação da conexão
			if ($this->conexao->connect_error) {
				die("<br>Conexão falhou: " . $this->conexao->connect_error);
			}
			//echo "<br>Conexão feita com sucesso!";
		}
		
		function desconectar(){
			$this->conexao->close();
		}
		
		function selecionarBanco(){
			$this->conexao->select_db("mercado");
		}

		function inserirPessoa($nome, $data_nascimento, $sexo, $email, $senha){
			$senha_c = sha1(
					   sha1("criptografia_nivel.1".
					   sha1("nivel_2".
					   sha1("n3.criptografia".
					   sha1("hello.4n".
					   sha1("criptografado_comsucesso".$senha))))));

			$sql = "INSERT INTO PESSOA (nome, data_nascimento, sexo, email, senha)
					VALUES ('$nome','$data_nascimento', '$sexo', '$email', '$senha_c')";
			
			if($this->conexao->query($sql) === TRUE){
				$ultimo_id = $this->conexao->insert_id;
				//echo "<br>Registro criado com sucesso. O id é ".$ultimo_id;
			}
			else{
				echo "<br>Erro: " . $this->conexao->error;
			}
		}

		function inserirProduto($nome, $valor, $categoria, $marca, $id_pessoa){

			//faz um select pra ver se essa $marca ja existe, e se existe
			//pega o id dela no banco. Caso n'ao exista, insere ela no banco
			//e pega o id da marca inserida		



			//Busca idMarca
			$query_marca = "SELECT idMarca FROM MARCA WHERE nome_marca = '$marca'";
			$resultado = $this->conexao->query($query_marca);
			//se obtivemos algum retorno do select
			if($resultado->num_rows > 0){
				// mostra os dados de cada linha retornada
				while($linha = $resultado->fetch_assoc()) {
					$id_marca = $linha['idMarca'];
				}
			}
			//se nao, a marca nao existe
			else{

				//Inserir Marca
				$query_inserir_marca = "INSERT INTO MARCA(nome_marca) VALUES('$marca')";
				//executa o sql
				$this->conexao->query($query_inserir_marca);
				//pega o id da marca inserida
				$id_marca = $this->conexao->insert_id;
			}

			$query_inserir_produto = "INSERT INTO PRODUTO(nome, valor, categoria, dataPublicacao, idPessoa , idMarca) 
				VALUES ('$nome', '$valor', '$categoria', CURDATE(), '$id_pessoa', '$id_marca')";
			$this->conexao->query($query_inserir_produto);
		}


		function consultarProduto(){
		    //$sql = "SELECT nome, valor, categoria from Produto";  
		    $sql = "SELECT nome, valor, nome_marca, dataPublicacao, categoria FROM vw_imprimir_produto";  
			$resultado = $this->conexao->query($sql);
			//se obtivemos algum retorno do select
			if($resultado->num_rows > 0){
				// mostra os dados de cada linha retornada
				while($linha = $resultado->fetch_assoc()) {
					echo "<tr>".
							"<td>" .$linha["nome"] ."</td>".
							"<td>" .$linha["valor"] ."</td>". 
							"<td>" .$linha["nome_marca"] ."</td>".
							"<td>" .date('d-m-Y', strtotime($linha["dataPublicacao"])) ."</td>".
							"<td>" .$linha["categoria"]."</td>".
						 "</tr>";
				}
			}
			else  "Erro!";		
		}

		function buscar($nome){
			// Consulta do id, nome e sobrenome de todas as pessoas da tabela com o $nome
			$sql = "SELECT * FROM Produto WHERE nome like '%$nome%'";
			$resultado = $this->conexao->query($sql);
			//se obtivemos algum retorno do select
			return $resultado;
				header("location:index.php?loginSucesso=1");

		}

		function login($email, $senha){
			// Consulta do id, email e senha dos usuarios
			$sql = "SELECT email, senha, idPessoa FROM PESSOA WHERE email = '$email' and senha = '$senha';";
			$resultado = $this->conexao->query($sql);
			//se obtivemos algum retorno do select
			if($resultado->num_rows > 0){
				// mostra os dados de cada linha retornada
				while($linha = $resultado->fetch_assoc()) {
					/*echo "<br>Nome: " . $linha["email"]. " " .$linha["senha"];
					$senha_c = sha1(
						sha1("criptografia_nivel.1".
						sha1("nivel_2".
						sha1("n3.criptografia".
						sha1("hello.4n".
						sha1("criptografado_comsucesso".$senha))))));*/
					/*
					if($email == $linha["email"] && $senha == $senha_c){
						header("location:index.html");
					}*/
					return $linha['idPessoa'];
				}
			}
			else{
				return -1;
				//echo "Nenhum resultado encontrado";
			}
		}
		
		function alterarEmail($id, $email){
			// Alteração de um dado da tabela
			$sql = "UPDATE Pessoa SET email='$email' WHERE id = $id";
			if($this->conexao->query($sql) === TRUE){
				echo "<BR>Registro alterado com sucesso!";
			}
			else{
				echo "<br>Erro na alteração do registro: " . $this->conexao->error;
			}
		}

		function alterarSenha($id, $senha){
			// Alteração de um dado da tabela
			$sql = "UPDATE Pessoa SET senha='$senha' WHERE id = $id";
			if($this->conexao->query($sql) === TRUE){
				echo "<BR>Registro alterado com sucesso!";
			}
			else{
				echo "<br>Erro na alteração do registro: " . $this->conexao->error;
			}
		}
		
	}
?>