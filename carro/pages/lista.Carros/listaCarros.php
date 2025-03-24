<h1>VOCÊ ESTÁ NA LISTA DE CARROS</h1>

<table>
<tr>
    <tr>Modelo</tr>
    <tr>Marca</tr>
    <tr>Valor</tr>
    <tr>Ano</tr>
    <tr>Cor</tr>
</tr>
<?php
$sql = "SELECT * FROM carros";
// pedido
$query = mysqli_query($conexao,$sql) or die ("Erro na requisicão!" .mysqli_error($conexao));

// fetch_asso = vai acessar um query, e contar os resultados
while($dados = mysqli_fetch_assoc($query)){
?>


<?php

}
?>

</table>