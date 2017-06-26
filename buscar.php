<?php
include("database.php");

	$db = new Data_Base();
	$db->conectar();
	$db->selecionarBanco();


//function buscar($nome){
	// Consulta do id, nome e sobrenome de todas as pessoas da tabela com o $nome
	/*$sql = "SELECT * FROM Produto WHERE nome like '%$nome%'";
	$resultado = $this->conexao->query($sql);
	//se obtivemos algum retorno do select
	return $resultado;*/


	$sql = "SELECT nome, valor, nome_marca, dataPublicacao, categoria FROM vw_imprimir_produto WHERE nome like '%$nome'";  
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

//}

/*if(isset($_GET['buscar'])) {
	$db->buscar($nome);
}*/

?>






