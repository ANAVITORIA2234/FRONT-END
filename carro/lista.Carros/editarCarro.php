<?php

    $id=$_GET['idCarro'];

    echo "esse é o carro de N° $id";

    $sql="SELECT * FROM carros WHERE idCarro = {$id}";
    $query = mysqli_query($conexao,$sql) or die("Erro ao executar a consulta".mysqli_error($conexao));
    $dados = mysqli_fetch_assoc($query);

?>

    <h2>EDITAR AUTOMÓVEL</h2>

<form action="index.php?menu=dbEditarCarro" method="post">
<div class="form-group">
        <label for="idCarro">N°</label>
        <input value="<?=$id?>" type="text" id="idCarro" name="idCarro">
    </div>
    <div class="form-group">
        <label for="modelo">Modelo</label>
        <input value="<?=$dados['modeloCarro']?>" type="text" id="modelo" name="modelo">
    </div>
    <div class="form-group">
        <label for="marca">Marca</label>
        <input value="<?=$dados['marcaCarro']?>" type="text" id="marca" name="marca">
    </div>
    <div class="form-group">
        <label for="Valor">Valor</label>
        <input value="<?=$dados['valorCarro']?>" type="number" id="valor" name="valor">
    </div>
    <div class="form-group">
        <label for="Ano">Ano</label>
        <input value="<?=$dados['anoCarro']?>"type="date" id="ano" name="ano">
    </div>
    <div class="form-group">
        <label for="cor">Cor</label>
        <input value="<?=$dados['corCarro']?>" type="text" id="cor" name="cor">
    </div>
    <button type="submit">Editar</button>
</form>