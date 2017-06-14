<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body>
  <?php
  if(isset($_GET['loginErro'])){
    echo "Erro no login";
  }
?>
  <form action="loginScript.php" method="POST">
    <input type="text" name="email" placeholder="Email">
    <input type="password" name="senha" placeholder="Senha">
    <button type="Submit">Enviar</button>
    <button type="reset">Limpar</button>
  </form>
</body>
</html>