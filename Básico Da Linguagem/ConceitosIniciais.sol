/**

    Princípios básicos da linguagem Solidity, da rede Ethereum.
    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Source: https://github.com/Davidson-Souza/soladity
    Data: Feb, 2020

 */

pragma solidity >=0.6.0;      // Versão do compilador à ser usada

// Estrutura de um contrato, o "main" da linguagem solididty
contract nomeDoContrato 
{
    // Variável de estado, ela fica armazenada de maneira definitiva na blockchan
    uint myUnsignedInteger = 100;
    
    // Operadores matemáticos:
    uint soma = 1 + 2;      // Adição
    uint sub  = 1 - 2;      // Subtração
    uint div  = 2 / 2;      // Divisão
    uint mul  = 2 * 2;      // Multiplicação
    uint pow  = 2 **2;      // Exponenciação
    uint mod  = 2 % 2;      // Resto da divisão 
    
    // Estruturas de dados compostas
    struct Person
    {
        uint age;
        string name;
    }
    // Vetores:
        // Estáticos:
        uint[2] fixed_Array;
        // Dinâmicos
        uint[] dynamic_Array;
        // Públicos (A linguagem cria os métodos getter's dele automaticamente)
        uint[] public dynamic_public_Array;
        // Array de tipos compostos (structs)
        Person[] public peoples;
    
    // Combinando array e estrutura
    Person satoshi = Person(172, "Satoshi");    // Cria uma instância de Person, chamado satoshi
    peoples.push(satoshi);                      // Coloca no topo do array
    peoples.push(Person(16, "Vitalik"))         // Outra maneira de fazer, porém em uma só linha

    // Funções:
    /**
     * Por convenção, os nomes de parâmetros em solididty começam com underline (_), para diferenciar de 
     * variáveis globais.
     * Estruturas, arrays, strings... Devem ser armazenadas "In memory", como convenção da linguagem
     * A linguagem suporta passagem de parâmetros por passagem direta ou por referência
     * A função pode ser pública ou privada. Uma função pública pode ser acessada por qualquer um, ou
     * até outro contrato. Por convenção, usa-se preferencialmente private. 
     * Também por convenção, métodos private começam com underline.
     */
    function eatHamburgers(string memory _name, uint _amount) public // Ou private
    {
        // Código da função aqui
    }
    eatHamburgers("vitalik", 300);              // Chamando a função
    // Função que retorna algo
    string greeting = "What's up, guy?";        // Apenas uma string usada no exemplo
    // Os retornos da função são listados com a palavra reservada "returns", seguido dos tipos do retorno
    function sayHello() public returns(string memory)
    {
        return greeting;    // Retorna o valor da varável para que chamou a função
    }
    // Modificadores:
    // Se uma função não muda nenhum status interno do solidity, ela pode ser marcada como uma view
    function sayHello() public view returns (string memory)
    {
        return greeting;
    }
    // Se a função não acessa NENHUM status global, ela é chamada de pura
    function _sum(uint _a, uint _b) private pure returns (uint)
    {
        return _a + _b;
    }



    // Algoritmo buit-in de hash (keccak256), o abi.encodePacked() é usado para transformar o texto em um
    // Conjunto de bytes planos para o hash funcionar
    keccak256(abi.encodePacked("texto"));


    // Typecast - Assim como outras linguagens, o solidity permite cast entre diferentes tipos de variáveis
    uint8 a = 5;
    uint b = 6;
    // lançaria um erro, já que as variáveis possuem tipos diferentes
    uint8 c = a * b; 
    // com o cast o problema é solucionado!
    uint8 c = a * uint8(b); 

    // Eventos - São uma maneira de avisar para o front-end da aplicação que houve uma mudança, ou ação
    // na blockchain
    event IntegerAdded(uint _a, uint _b, uint _result);

    function add(uint _a, uint _b) public returns (uint)
    {
        uint result = _x + _y;
        // Lança o envento quando o processamento terminar
        emit IntegerAdded(_x, _y, result);
        return result;
    }

    // O front-end deve "ouvir" este evento; um exemplo em JS
    
    /*
    contract_Name.IntegerAdded((a, b, result) => {
        // Código tratando o evento aqui
    })
    */
    
} // End contract