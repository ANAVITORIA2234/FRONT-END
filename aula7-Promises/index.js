  // Promise e uma promessa!
  // Resolve - Cumprimos a promessa
  // Reject - 'Rejeitamos' a promessa, ou não cumpriu!
  // PRONISSESTATE - estado da promessa!
  // FULLFILED - 'promessa cumprida'
  // REJECTED - 'promessa quebrada'
  // PROMISERESULT - o motivo do status
  const promessa = new Promise((resolve, reject) => {
    let nome = 'Ana' 

    if(nome == 'Ana'){
      // resolve('Usuario é Ana!')
      // resolve({'adm' : 'Ana'})
      // function alerta(){
      //    alerta('oi')
      //  }
      // resolve(alerta())
    }else{
      reject('Porque o usuario não é Ana')
    }
  })


  // then - espera o resolve e retorna o que
  // o resolve tiver, caso reject acusa um 
  // erro
  // 'THEN ESPERA DE DÊ CERTO'
  promessa.then((dadosDoResolve) =>{
  console.log(dadosDoResolve)
  })


  //catch - espera o reject e retorna o que
  // o reject correspondente  tiver, caso
  // resolve ele não executa
  // 'THEN ESPERA QUE NÃO DE DÊ CERTO'
  promessa.catch(erro =>{
    console.log(erro)
  })

  function sujeitoDemorado(){
    return new Promise((resolve) => {
    setTimeout(() => {
      console.log('rodando')
      resolve()
  },2000)
    })
  }

  async function carregandoConteudo(){
  console.log('oi')
  sujeitoDemorado()
  console.log('TERMINEI')



  
}

carregandoConteudo()