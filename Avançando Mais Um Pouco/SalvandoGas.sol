/**
    Voltando a falar de GAS, agora com mais uma dica de como salvar um pouco deles em nossa aplicação.
    Se uma função apenas lê algo da blockchain, ela não usará nenhum poder de processamento extra, logo
    ela não gasta GAS. Então se uma função apenas retorna algo da blockchain, use-a como uma view.

    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/solidity
 */
contract savingGAS
{
    uint private data = 1;
    // Devolve uma variável interna do contrato para que a chamou, porém gasta GAS
    function returnSomething() public returns(uint)
    {
        return data;
    }
    // Faz o mesmo da anterior, mas não usa GAS
    function returnSavingGAS() view returns (uint)
    {
        return data;
    }
}