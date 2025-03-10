
function getQueryParam(param) {
    const urlParams = new URLSearchParams(window.location.search);
    return urlParams.get(param);
}

window.onload = function() {
    const idade = getQueryParam('idade');
    const valorDolar = getQueryParam('valorDolar');

    if (idade !== null && valorDolar !== null) {
       
        const cotacaoDolar = `Cotação do Dólar: R$ ${parseFloat(valorDolar).toFixed(2)}`;

        const idadeCheck = idade >= 18 ? "Você é maior de idade." : "Você não é maior de idade.";

      
        const numeroAleatorio = `Número Aleatório: ${Math.floor(Math.random() * 100) + 1}`;

        // Exibir os resultados
        document.getElementById('cotacao').innerHTML = `<p>${cotacaoDolar}</p>`;
        document.getElementById('idadeCheck').innerHTML = `<p>${idadeCheck}</p>`;
        document.getElementById('numeroAleatorio').innerHTML = `<p>${numeroAleatorio}</p>`;
    }
};
