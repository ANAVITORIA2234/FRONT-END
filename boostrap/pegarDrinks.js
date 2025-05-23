    function buscaAlfabetica(letra){
    document.querySelector('#resultados').innerHTML = ""
    fetch(`https://www.thecocktaildb.com/api/json/v1/1/search.php?f=${letra}`).then((response) =>{
        return response.json()
    }).then((data) => {
        console.log(data)
        listaDrinks = data.drinks

        listaDrinks.forEach(drink => {
            document.querySelector('#resultados').innerHTML += `
            <img src="${drink.strDrinkThumb}">
            <h3>${drink.strDrink}</h3>
            `
        });
    });

    }



    function drinkAleatorio(){
    document.querySelector('#resultados').innerHTML = ""
    fetch(`https://www.thecocktaildb.com/api/json/v1/1/random.php`).then((response) =>{
        return response.json()
    }).then((data) => {
        console.log(data)
        listaDrinks = data.drinks
    
        listaDrinks.forEach(drink => {
            document.querySelector('#resultados').innerHTML += `
            <img src="${drink.strDrinkThumb}">
            <h3>${drink.strDrink}</h3>
            `
        });
    });
    
  }
  



    document.querySelector('#buscarBtn').addEventListener('click',buscaEspecifica)
    function buscaEspecifica(){
        termo = document.querySelector('#pesquisar').value

        document.querySelector('#resultados').innerHTML = ""
    fetch(`https://www.thecocktaildb.com/api/json/v1/1/search.php?s=${termo}`).then((response) =>{
        return response.json()
    }).then((data) => {
        console.log(data)
        listaDrinks = data.drinks
        
        if(listaDrinks == null){
            document.querySelector('#resultados').innerHTML += `
                <h3>NÃO ENCONTRADO!</h3>
            `
        }else{
            listaDrinks.forEach(drink => {
                document.querySelector('#resultados').innerHTML += `
                <img src="${drink.strDrinkThumb}">
                <h3>${drink.strDrink}</h3>
                `
            });
        }
    
        
    });
    
    }
    


