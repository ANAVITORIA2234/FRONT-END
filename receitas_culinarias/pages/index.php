<?php
// Conectar ao banco de dados
$host = 'localhost';
$dbname = 'receitasDB';
$username = 'root'; // Altere com o seu usuário
$password = ''; // Altere com a sua senha
$conn = new mysqli($host, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Query para listar as receitas
$sql = "SELECT * FROM receitas";
if(isset($_GET['tipo_receita'])) {
    $tipo = $_GET['tipo_receita'];
    $sql .= " WHERE tipo_receita = '$tipo'";
}

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Receitas</title>
    <link rel="stylesheet" href="style.css>
</head>
<body>
    <div class="container">
        <h1>Receitas</h1>
        <form method="GET" action="index.php">
            <label for="tipo_receita">Filtrar por tipo:</label>
            <select name="tipo_receita" id="tipo_receita">
                <option value="">Todos</option>
                <option value="Doce">Doce</option>
                <option value="Salgado">Salgado</option>
                <option value="Vegano">Vegano</option>
            </select>
            <button type="submit">Filtrar</button>
        </form>

        <div class="receitas-list">
            <?php while ($row = $result->fetch_assoc()) { ?>
                <div class="receita-item">
                    <h2><a href="receita.php?id=<?php echo $row['id']; ?>"><?php echo $row['titulo']; ?></a></h2>
                    <p><?php echo substr($row['descricao'], 0, 150); ?>...</p>
                    <p><strong>Tipo:</strong> <?php echo $row['tipo_receita']; ?></p>
                </div>
            <?php } ?>
        </div>
        <a href="pages/cadastro.php">Cadastrar Nova Receita</a>
    </div>
</body>
</html>

<?php
$conn->close();
?>
