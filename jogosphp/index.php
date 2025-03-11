<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>

<main>
<form action="assests/scripts/login.php" method="post">
<!-- email -->
 <div class="from-up">
<label for="email">Email:</label>
<input placeholder="Digite um email jhon@gmail.com" type="email" required name="email" id="email">
 </div>

<!-- senha -->
<div class="from-up">
<label for="senha">Senha:</label>
<input placeholder="Digite a sua senha" type="password" required name="senha" id="senha">
 </div>
 <button type="submit">LOGIN</button>
 <p>Esqueceu a senha ? <a href="#">clique aqui</a></p>
 <p>Esqueceu a senha ? <a href="assets/cadrastro.php">Cadrasta-se</a>

 

</form>
</main>


</body>
</html>