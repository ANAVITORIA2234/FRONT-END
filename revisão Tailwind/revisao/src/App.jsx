
import './App.css'

import produto1 from './../src/assets/produtos/produto1.png'
import produto2 from '../src/assets/produtos/produto2.png';
import produto3 from '../src/assets/produtos/produto3.png';
import produto4 from '../src/assets/produtos/produto4.png';


function App() {

  return (
    <>
      <header>
        <img src="assets/Criativa.png" alt="" className="logo" />
        <link href="index.css" rel="stylesheet"></link>

        <h1>Papelaria Criativa 📝</h1>
        
      </header>




      <section id="sobre">
        <h2>Sobre Nós</h2>
        <p>Somos apaixonados por papelaria! Aqui você encontra produtos criativos, úteis e lindos para todas as idades.</p>
      </section>

      <section id="produtos">
        <h2>Produtos</h2>
        <p>Temos várias opções de produtos, veja as seguintes escolhas!</p>

        <div className="produtos-list">


          <img id='produto1' src={produto1} alt='Kit Organizador, Porta Caneta e Lixeira Rose Gold Escritório'></img>
          <img id='produto2' src={produto2} alt='Marca Texto Grifpen Estojo 6 Unidades, Faber-Castell, MT/TP6ZF, Multicor, pacote de 6'></img>
          <img id='produto3' src={produto3} alt='Caneta Ponta Fina – STABILO point 88 – Estojo com 10 unidades – Em 10 cores'></img>
          <img id='produto3' src={produto4} alt='Marcadores À Base De Álcool 204 Cores Com Suporte – Caneta De Desenho Com Ponta Dupla Para Esboços E Ilustrações De Anime, Para Crianças E Adultos (204 cores)'></img>
        </div>
      </section>

      <section class="produtos">

      </section>


      <section id="contato">
        <h2>Contato</h2>
        <p>Email: contato@papelariacriativa.com</p>
        <p>Telefone: (11) 1234-5678</p>
      </section>

      <footer>
        <p>&copy; 2025 Papelaria Criativa</p>
      </footer>
    </>
  )
}

export default App
