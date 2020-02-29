/**
    Um tipo de localização de dados, que pode ser usado apenas em funções externas.
    Ele é similar ao memory, porém usa um dado vindo de quem fez a chama, no caso, do cliente
    que está usando o DApp.

    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/solidity

 */

contract callData
{
    function doSomething(string calldata _string) external
    {
        // Faz algo com a string que foi definida pelo chamador.
    }
}