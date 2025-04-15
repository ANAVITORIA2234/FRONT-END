<?php
// Conectar ao banco de dados
$host = 'localhost';
$dbname = 'receitas_culinarias';
$username = 'root'; // Altere com o seu usuário
$password = ''; // Altere com a sua senha
$conn = new mysqli($host, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Processar exclusão
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['excluir_id'])) {
    $id = intval($_POST['excluir_id']); // Garante que o ID é um número inteiro
    $sql = "DELETE FROM receitas WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    if ($stmt->execute()) {
        echo "<script>alert('Receita excluída com sucesso!'); window.location.href='index.php';</script>";
    } else {
        echo "<script>alert('Erro ao excluir receita: " . $conn->error . "');</script>";
    }
    $stmt->close();
}

// Query para listar as receitas
$sql = "SELECT * FROM receitas";
if (isset($_GET['tipo_da_receita'])) {
    $tipo = $conn->real_escape_string($_GET['tipo_da_receita']);
    $sql .= " WHERE tipo_da_receita = '$tipo'";
}

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Receitas</title>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
    <div class="container">
        <h1>Receitas</h1>
        <form method="GET" action="index.php">
            <label for="tipo_da_receita">Filtrar por tipo:</label>
            <select name="tipo_da_receita" id="tipo_da_receita">
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
                    <h2><a href="pages/receita.php?id=<?php echo $row['id']; ?>"><?php echo $row['titulo']; ?></a></h2>
                    <p><?php echo substr($row['descricao'], 0, 150); ?>...</p>
                    <p><strong>Tipo:</strong> <?php echo $row['tipo_da_receita']; ?></p>

                    <!-- Formulário para excluir -->
                    <form method="POST" action="index.php" class="delete-form">
                        <input type="hidden" name="excluir_id" value="<?php echo $row['id']; ?>">
                        <button type="submit" class="delete-button">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="white" width="16px" height="16px">
                                <path d="M3 6h18v2H3V6zm2 3h14v13c0 1.1-.9 2-2 2H7c-1.1 0-2-.9-2-2V9zm3 2v9h2v-9H8zm4 0v9h2v-9h-2zm4 0v9h2v-9h-2zM9 4h6c.6 0 1 .4 1 1v1H8V5c0-.6.4-1 1-1zM5 5c0-1.1.9-2 2-2h10c1.1 0 2 .9 2 2v2h-1H4H3V5c0-1.1.9-2 2-2z"/>
                            </svg>
                        </button>
                    </form>
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
