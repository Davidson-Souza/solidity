/**
    Uma coisa muito útil, em qualquer linguagem, é a possibilidade de recuperar e manipular dados relacionados
    à tempo!
    Em solidity, temos o método "now", que retorna o horário da rede. Ele é  um alias para block.timestamp.
    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/soladity
 */
 pragma solidity 0.6.1;         // Compilador usado

contract Time
{
    uint lastUpdated;

    // Muda o valor de "lastUpdated" para o valor atual
    function updateTimestamp() public {
        lastUpdated = now;
    }

    // Retornará 5, se o valor de "lastUpdate" for 5 minutos no passado em relação ao horário atual.
    // Insto é, se passaram 5 minutos desde a última atualização
    // Retorna falso caso contrário
    function fiveMinutesHavePassed() public view returns (bool) {
        return (now >= (lastUpdated + 5 minutes));
    }
}