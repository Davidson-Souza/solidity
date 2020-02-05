/**
    Princípios básicos da linguagem Solidity, da rede Ethereum.
    Outras estruturas na rede Ethereum
    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
 */
 pragma solidity 0.6.1;
contract estruturas
{
    /**
        Endereços: Endereços são hash's criptográficas, atreladas à uma conta ou mesmo ou contrato
        por exemplo: 0x0cE446255506E92DF41614C46F1d6df9Cc969183 (Endereço do projeto cryptozombies.io)

        Mapping: Um outro tipo de armazenar dados agrupados, porém com um sistema chave => valor
     */
     // Exemplo de mapping:
    mapping (address => uint) public accountBalance;    // Atrelando o endereço a um uint que diz quanto de saldo ele possuí
    mapping (uint => string) userIdToName;              // Mapea um id à uma string (que pode ser um nome, ou username)
    /**
        msg.sender = variável global que armazena o endereço de quem chamou (pessoa ou smart contract)
     */
    // Mapping para armazenar o número favorito das pessoas
    mapping (address => uint) favoriteNumber;
    // Função que muda o número favorito de cada pessoa, baseado em seu endereço
    function setMyNumber(uint _number) public
    {
        // Armazena o valor passado pelo caller no id do mesmo
        favoriteNumber[msg.sender] = _number;
    }
    // Função que recupera o número, e devolve para o chamador
    function whatIsMyNumber () public view returns (uint)
    {
        // Retorna o valor armazenado, caso a pessoa já o tenha armazenado
        // Retorna 0 se a pessoa não tiver armazenado nenhum número
        return favoriteNumber[msg.sender];
    }
    function sayHiToVitalik(string memory _name) public pure returns (string memory)
    {
        // Verifica se o nome é igual à Vitalik. 
        // A linguagem não suporta comparação de strings nativamente
        // Compara as duas hashes, se forem iguais, considerando a dispersão da hash, elas serão idênticas
        // Se for igual, ele continua, senão ele lança uma excessão
        require(keccak256(abi.encodePacked(_name)) == keccak256(abi.encodePacked("Vitalik")));
        // Se for igual, retorna a mensagem
        return "Hi!";
    }
}