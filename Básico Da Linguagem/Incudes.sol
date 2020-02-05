/**
    Além da possibilidade de criar hierarquias, o Solidity ainda permite incluir código vindo de outros 
    aquivos, assim como a maioria das linguagens. Não tem muito segredo aqui, apenas mostrando que existe!
    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020    
    Source: https://github.com/Davidson-Souza/soladity
 */

 import "./ConceitosIniciais.sol";           // Se o arquivo estiver na mesma pasta, basta inciar com ./
 contract newContrato is outrocontrato.sol  // Hierarquia, como no exemplo anterior
 {
     // Código do novo contrato
 }