/**
    As funções em Solidity podem retornar 0, 1 ou mais valores.
    Estes valores podem ser recuperados todos, ou apenas alguns.

    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/solidity
*/

pragma solidity >=0.6.0;      // Versão do compilador à ser usada

// Contrato principal que será usado neste exmplo.
contract MultipleReturns{
    // Função com mais de um retorno (a, b, c).
    function multipleReturns() internal pure returns(uint a, uint b, uint c) {
        return (1, 2, 3);
    }
    // Aqui recebemos ambos os retornos, e armazenamos em variáveis separadas. Salvo engano, isto se chama
    // desempacotar, ao menos em React é :D .
    function processMultipleReturns() external pure{
        // Variaveis que receberão os dados.
        uint a;
        uint b;
        uint c;
        // Aqui colocamos os valores nas variáveis. Lembrando que ela é "desempacotada" na ordem declarada.
        (a, b, c) = multipleReturns();
    }

    // Podemos ainda recuperar apenas um retorno, ou parte deles.
    function getLastReturnValue() external pure{
        // Variável que receberá os dados.
        uint c;
        // Apenas deixe os demais em branco (o número de vírgulas é o mesmo).
        (,,c) = multipleReturns();
    }
}