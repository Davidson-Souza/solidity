pragma solidity >0.6.0;
/**
    Hierarquia é o processo de fazer com que uma classe/contract herde todos os itens do ancestral.
    É interessante para tornar o código mais limpo e organizado.
 */
// Classe ancenstral, aquela que será "copiada" para as demais
contract Doge
{
    function catchphrase() public pure returns (string memory)
    {
        return "So how CryptoDoge";
    }
}

// Classe que "extende" a ancestral, soma-se aos metodos da ancestral aos seus próprios
contract babyDoge is Doge
{
    function anothercatchphrase() public pure returns(string memory)
    {
        return "Such Moon BabyDoge";
    }
}
