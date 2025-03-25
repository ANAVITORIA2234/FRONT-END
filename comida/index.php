
<?php
include("db/conexao.php");
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catalogo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <header>
   <!-- bg- backgroudcolor- cordasejada-->
    <nav class="navbar navbar-expand-lg" style="background-color: rgba(255, 15, 15, 0.795);">
   <!--  container(80% centralizado) -->
    <!-- container-fluid(100%) -->
       <!-- w (width) (0,25,50,75,100) -->
         <!-- h (height) -->
        <div class="container">
             <!-- logo -->
          <a class="navbar-brand text-light" href="index.html">Catalogo</a>
           <!-- botao mobile -->
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

            
              <li class="nav-item ">
                <a class="nav-link active text-light" aria-current="page" href="index.html">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-light" href="pages/catalogo.html">Catalogo</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-light" href="carrinho.html">Carrinho</a>
              </li>
             
            </ul>
            <form class="d-flex" role="search">
              <input class="form-control me-2" type="search" placeholder="Procurar produto" aria-label="Search">
              <button class="btn btn-outline-light" type="submit">Procurar</button>
            </form>
          </div>
        </div>
      </nav>
    
    </header>

    <main>

        <section id="banner">
        <div id="carouselExampleIndicators" class="carousel slide my-3 mx-auto shadow-lg">
            <div class="carousel-inner">

                <?php
                    $sql = "SELECT * FROM catalogo";
                    // pedido
                    $query = mysqli_query($conexao,$sql) or die ("Erro na requisicão!" .mysqli_error($conexao));

                    // fetch_asso = vai acessar um query, e contar os resultados
                    while($dados = mysqli_fetch_assoc ($query)){
                    ?>
                    <div class="carousel-item active">
                        <img src="<?=$dados['imagem']?>" class="d-block w-100" alt="...">
                    </div>


                    <?php

                }
                ?>
              
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </section>
    </main>

<section id="banner"
  </section>
<section id="categorias" class="container-fluid d-flex flex-column align-items-center">
 <h1>ESCOLHA O SEU PEDIDO!</h1>
 <!--CATEGORIAS ITENS PARA O JAVASCRIPT-->
 <div id="categoriaItens" class="container-fluid d-flex justify-content-center flex-wrap gap-3"
 <!-- ITENS JS -->
 
  
  </div>

</div>

</section>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="script.js"></script>



</body>
</html>