/**
    No tópico anterior, discutimos sobre um meio dinâmico para modificar informações internas no contrato.
    Para isto usamos uma função que muda o valor da variável de estado interna no solidity.
    Entretanto, se você parar para pensar um pouco, esta abordagem é terrível, pois um indivíduo de índole
    duvidosa pode usar este método para invalidar o nosso contrato, apontando para um lugar errado, ou para
    nenhum lugar, isto atrapalha o funcionamento do contrato para os nossos usuários.
    Uma maneira de fazer isto, é criar um contrato "Ownable", isto é, um contrato que possui um "dono"(você).
    Este dono terá alguns privilégios dentro do contrato, e isto pode ser um mecanismo contra a ação de atacantes
    Porém, obviamente, isto limita o quesito descentralização do contrato.
    
    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/solidity
 */
pragma solidity >=0.6.0;      // Versão do compilador à ser usada
// Este é o contrato que possuirá um dono
contract Ownable
{
    // Variável de estado que irá armazenar o atual proprietário do contrato
    address private _owner;
    // Evento lançado toda vez que o dono do contrato for alterado
    event OwnershipTransferred
    (
        address indexed previousOwner,
        address indexed newOwner
    );

    // Aqui  definimos o proprietário original, assim que o contrato é registrado
    constructor() internal
    {
        _owner = msg.sender;
        emit OwnershipTransferred(address(0), _owner);  // Lança o evento, dizendo que o proprietário foi modificado
    }

    // Retorna o endereço do atual proprietário
    function owner() public view returns(address)
    {
        return _owner;
    }

    // Este é um novo modificador (aquelas keywords que ficam do lado de uma função).
    // Basicamente uma função que seja onlyOwner só pode ser acessada pelo proprietário
    modifier onlyOwner()
    {
       require(isOwner());  // Verifica se a pessoa é a proprietária do contrato
        _;                  // Este operador significa: o restante da funçao aqui, é como um ...
    }

    // Retorna um booleano(true/false), dizendo se a pesso é ou não a dona do contrato
    function isOwner() public view returns(bool) {
        return msg.sender == _owner;
    }

    // Função para que o atual proprietário possa renunciar a posse do contrato
    function renounceOwnership() public onlyOwner {
        emit OwnershipTransferred(_owner, address(0));
        _owner = address(0);
    }

    // Função que permite transferir a posse para outra pessoa
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    // Método interno que faz a efetiva troca de proprietário
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0));
        emit OwnershipTransferred(_owner, newOwner);
        _owner = newOwner;
    }
}