// var clienteNome = 'Leo'
// var clienteCpf = '999999999'
// var clienteEmail = 'email@email'
// var clienteTelefonee = '88888888'
// var clienteTipoconta= 'Fisico'
// var clienteSaldo = '0'

// var clienteNome2 = 'Alessandra'

class Cliente {
    nome;
    dataNascimento;
    cpf;
    email;
    telefone;
    tipoDeconta;
    saldo;
    depositar(valor){
        if (this.saldo <= valor){
            console.log(`Opercação não permitida`)
        }else{
        this.saldo += valor
        console.log(`O valor de  R${valor} foi depositado com sucesso!`)
        }
    }
    // argumento - é o valor passado
    // parametro - é a palestra que vai saber salvar o argumento
    pix(valor){
       if (this.saldo < valor){
        console.log(`Você não tem o saldo disponivel`)
       }else{
        this.saldo -= valor
        console.log(`Pix de valor R$(valor) foi efetuado com sucesso!`)

       }
    }

}

var cliente1 = new Cliente
cliente1.nome = 'Leo'
cliente1.dataNascimento = '11/01/1998'
cliente1.cpf = '8888888888-88'
cliente1.email = 'leozingames@gmail.com'
cliente1.saldo = '0'
cliente1.pix = (100)


console.log(cliente1)
