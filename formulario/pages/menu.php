<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu principal</title>
    <link rel="stylesheet" href="../styles/all.css">
</head>

<body>
    <header>
        <div id="logo">logo</div>
        <nav>
            <ul>
                <li><a href="menu.php"> Home</a></li>
                <li><a href="../index.php"> Log ot</a></li>

            </ul>
        </nav>
    </header>

    <main>
        <?php
        // $titulo = "Moana";
       // var_dump($titulo);

       // $status = true;
       // var_dump($status);

       //var_dump($_REQUEST); // get, post, cookies
      // var_dump($_GET);

$nome = $_REQUEST['nome'];
$email = $_REQUEST['email'];
$senha = $_REQUEST['senha'];

echo "Olá $nome, sejam vem vindo! <br>";
echo "$nome, seu email é : $email <br>";
echo "E sua senha é $senha";

    ?>
    </main>


    <footer>
        Todos os direitos reservados a Ana
        <?php echo date("Y"); ?>:
    </footer>


</body>

</html>