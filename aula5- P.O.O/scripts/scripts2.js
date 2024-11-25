class Usuario{
// id , # , email , bio , genero
constructor(id , apelido , nome , email , bio , genero){
    this.id = id
    this.apelido = apelido;
    this.nome = nome
    this.email = email;
    this.bio= bio;
    this.genero= genero;
    this.postar = function(pensamento){

        document.querySelector("#resposta").innerHTML += `
         <div class="post">
         <h3>${this.apelido}</h3>
         <p> ${pensamento}</p>
         </div>
        `
    }
    

}
}

var user1 = new Usuario(1,"ANAVITORIA2234" , "ANAVITORIA2234" ,"ana.v.duarte@aluno.senai.br","gsoto de treinar" , "feminino")
var user2 = new Usuario(2, "Vick" , "Vitoria" , "vick@gmail.com" ,   "PERFIL PESSOAL" , "Feminino")

function postarFeed(){
    alert("POSTADO COM SUCESSO")
    pensamento = document.querySelector('#pensamento').value

    user1.postar(pensamento)
}


