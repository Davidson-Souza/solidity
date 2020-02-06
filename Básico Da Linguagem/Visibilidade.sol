/**

    Além de public e private, em Solidity nós podemos declarar outros status de visibilidade para uma função
    em nossos contratos:
    public: Visível dentro e fora do contrato.
    private: Visível apenas dentro do contrato original, nem mesmo herdeiros podem acessar.
    internal: Visível apenas dentro do contrato, os herdeiros podem acessar.
    external: Apenas pode ser acessado de fora do contrato, nunca internamente.

    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/soladity
 */
 pragma solidity >=0.6.0;      // Versão do compilador à ser usada

// Ancestral
contract Sandwich {
    uint private sandwichesEaten = 0;
    // Esta função será vista dentro deste contrado, e de seus herdeiros
    function eat() internal {
        sandwichesEaten++;
    }
}

// Herdeiro
contract BLT is Sandwich {
    uint private baconSandwichesEaten = 0;

    function eatWithBacon() public returns (string memory) {
        baconSandwichesEaten++;
        // Podemos chamar ela aqui, pois é interna. Se fosse privada, ela seria inacessível aqui.
        eat();
    }
}