
import './App.css'

function App() {

  return (
    <>
      <header>
        <img src="assets/Criativa.png" alt="" className="logo" />

        <h1>Papelaria Criativa</h1>
        <nav>
          <a href="#sobre">Sobre</a>
          <a href="#produtos">Produtos</a>
          <a href="#contato">Contato</a>
        </nav>
      </header>

      <section id="sobre">
        <h2>Sobre Nós</h2>
        <p>Somos apaixonados por papelaria! Aqui você encontra produtos criativos, úteis e lindos para todas as idades.</p>
      </section>

      <section id="produtos">
        <h2>Produtos</h2>
        <p>Cadernos, canetas, blocos de notas, lápis decorados e muito mais!</p>
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
