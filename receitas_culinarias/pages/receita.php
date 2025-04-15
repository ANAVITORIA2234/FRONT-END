<?php
// Conectar ao banco de dados
$host = 'localhost';
$dbname = 'receitas_culinarias';
$username = 'root';
$password = '';
$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Obter a receita por ID
$id = $_GET['id'];
$sql = "SELECT * FROM receitas WHERE id = $id";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $row['titulo']; ?></title>
    <link rel="stylesheet" href="../styles/receitas.css">
</head>
<body>
    <div class="container">
        <h1><?php echo $row['titulo']; ?></h1>
        <?php if ($row['imagem']) { ?>
            <img src="../image/<?php echo $row['imagem']; ?>" alt="Imagem da Receita">
        <?php } ?>
        <p><strong>Autor:</strong> <?php echo $row['autor']; ?></p>
        <p><strong>Descrição:</strong> <?php echo $row['descricao']; ?></p>
        <p><strong>Tipo:</strong> <?php echo $row['tipo_da_receita']; ?></p>
        <h2>Modo de Preparo</h2>
        <p><?php echo nl2br($row['receita_texto']); ?></p>
    </div>
</body>
</html>

<?php
$conn->close();
?>
