/**
    Em solidity, podemos passar um struct como parâmetro para funções.
    Na realidade, passamos um ponteiro para o armazenamento interno, mas se você conhece ponteiros, sabe que
    na prática isto não muda muita coisa (exceto no desempenho).
    Isto só funciona com funções internas ou privadas.
    
    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/solidity
 */
 pragma solidity 0.6.1;         // Compilador usado

contract Exemplo
{
    struct Zombie
    {
        uint id;
        string name;
    }
    function fazAlgo(Zombie storage _zombie) private
    {
        // Faz algo com o struct recebido
    }
    // Instancia o struct na variável pública "zombie"...
    Zombie public zombie = Zombie(1, "Peter");
    // Invoca a função passando o struct como argumento...
    fazAlgo(zombie);
}