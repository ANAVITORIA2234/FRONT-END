<?php
// Conectar ao banco de dados
$host = 'localhost';
$dbname = 'receitasDB';
$username = 'root';
$password = '';
$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// Processar o formulário
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $titulo = $_POST['titulo'];
    $descricao = $_POST['descricao'];
    $receita_texto = $_POST['receita_texto'];
    $autor = $_POST['autor'];
    $tipo_receita = $_POST['tipo_receita'];
    $imagem = $_FILES['imagem']['name'];

    // Salvar a imagem no diretório de uploads
    if ($imagem) {
        move_uploaded_file($_FILES['imagem']['tmp_name'], 'uploads/' . $imagem);
    }

    $sql = "INSERT INTO receitas (titulo, descricao, receita_texto, autor, tipo_receita, imagem)
            VALUES ('$titulo', '$descricao', '$receita_texto', '$autor', '$tipo_receita', '$imagem')";

    if ($conn->query($sql) === TRUE) {
        echo "Nova receita cadastrada com sucesso!";
    } else {
        echo "Erro: " . $sql . "<br>" . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Receita</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Cadastrar Receita</h1>
        <form method="POST" enctype="multipart/form-data">
            <label for="titulo">Título:</label>
            <input type="text" name="titulo" id="titulo" required>

            <label for="descricao">Descrição:</label>
            <textarea name="descricao" id="descricao" required></textarea>

            <label for="receita_texto">Modo de Preparo:</label>
            <textarea name="receita_texto" id="receita_texto" required></textarea>

            <label for="autor">Autor:</label>
            <input type="text" name="autor" id="autor" required>

            <label for="tipo_receita">Tipo de Receita:</label>
            <select name="tipo_receita" id="tipo_receita" required>
                <option value="Doce">Doce</option>
                <option value="Salgado">Salgado</option>
                <option value="Vegano">Vegano</option>
            </select>

            <label for="imagem">Imagem (opcional):</label>
            <input type="file" name="imagem" id="imagem">

            <button type="submit">Cadastrar Receita</button>
        </form>
    </div>
</body>
</html>

<?php
$conn->close();
?>
