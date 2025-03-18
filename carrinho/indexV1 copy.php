<?php

session_start();

// verifica se algo esta null
if (!isset($_SESSION['carrinho'])) {
    $_SESSION['carrinho'] = [];
}


// adiciona produto
if (isset($_GET['produto'])) {
    $_SESSION['carrinho'][] = $_GET['produto'];
}

if (isset($_GET['deletarCarrinho'])) {
    //session_destroy();
    $_SESSION['carrinho'] = [];
}


// $_SESSION['carrinho'] += $_GET['produto'];
// var_dump($_SESSION['carrinho']);

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>carrinho</title>
    <link rel="stylesheet" href="styles/index.css">
</head>

<body>
    <header>
        <a href="?produto= SSD">Adicionar SDD</a>
        <a href="?produto= Disco de memória">Adicionar Disco de memória</a>
        <a href="?produto= Memória RAM">Adicionar Memória RAM</a>
        <a href="?produto= Placa mãe">AdicionarPlaca mãe</a>
        <!-- deletar-->
        <a href="?deletarCarrinho=True">Deletar Carrinho</a>
    </header>

    <main>
        <ol>
            <?php

            // foreach(array) as alias{}
            // foreach(filmes as filme){filme.nome , filme.desc}
            foreach ($_SESSION['carrinho'] as $produto) {
                echo "<li>  $produto </li>";
            }

            ?>
        </ol>
    </main>

    <footer>
        <p> Todos os direitos reservados a @Ana</p>
    </footer>

</body>

</html>