<h1>VOCÊ ESTÁ NA LISTA DE CARROS</h1>

<form action="index.php?menu=lista" method="post">
<input type="text" name="pesquisa" id="pesquisa">
<button type="submit">PESQUISAR</button>
</form>



<table class="table">
<tr>
    <td>Modelo</td>
    <td>Marca</td>
    <td>Valor</td>
    <td>Ano</td>
    <td>Cor</td>
</tr>

<?php
if(isset($_POST['pesquisa'])){
$termoPesquisado=$_POST['pesquisa'];
}else{
 $termoPesquisado="";
}



$sql ="SELECT idCarro,
upper(modeloCarro)AS modeloCarro,
upper(marcaCarro)AS marcaCarro,
upper(valorCarro)AS valorCarro,
DATE_FORMAT(anoCarro, '%id/ %m/ %y')AS anoCarro,
upper(corCarro)AS corCarro
FROM carros WHERE 
idCarro='$termoPesquisado' OR
modeloCarro LIKE '%$termoPesquisado%'
ORDER BY modeloCarro ASC
";

// pedido
$query=mysqli_query($conexao,$sql)or die("Erro na requisicão!".mysqli_error($conexao));

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
            <td><a href="index.php?menu=deletarCarro&idCarro=<?=$dados['idCarro'] ?>">DELETAR</a></td>
        </tr>


<?php

}
?>

</table>