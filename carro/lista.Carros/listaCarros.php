<h1>VOCÊ ESTÁ NA LISTA DE CARROS</h1>

<table class="table">
<tr>
    <td>Modelo</td>
    <td>Marca</td>
    <td>Valor</td>
    <td>Ano</td>
    <td>Cor</td>
</tr>
<?php
$sql = "SELECT * FROM carros";
// pedido
$query = mysqli_query($conexao,$sql) or die ("Erro na requisicão!" .mysqli_error($conexao));

// fetch_asso = vai acessar um query, e contar os resultados
while($dados = mysqli_fetch_assoc($query)){
?>

<tr>
            <td><?=$dados['modeloCarro'] ?></td>
            <td><?=$dados['marcaCarro'] ?></td>
            <td><?=$dados['valorCarro'] ?></td>
            <td><?=$dados['anoCarro'] ?></td>
            <td><?=$dados['corCarro'] ?></td>
            <td><a href="index.php?menu=editarCarro&idCarro=<?=$dados['idCarro'] ?>">EDITAR</a></td>
        </tr>


<?php

}
?>

</table>