<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COLETA DE DADOS</title>
    <link rel="stylesheet" href="styles/all.css">
    <link rel="stylesheet" href="styles/index.css">
</head>

<body>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coleta de Dados</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="form-container">
        <h1>Coleta de Dados</h1>
        <form action="resultados.html" method="GET" id="form">
            <label for="idade">Idade:</label>
            <input type="number" id="idade" name="idade" required>

            <label for="valorDolar">Valor do Dólar (em reais):</label>
            <input type="number" id="valorDolar" name="valorDolar" step="0.01" required>

            <button type="submit">Enviar</button>
        </form>
    </div>

    <script src="script.js"></script>
</body>
</html>

</body>

</html>