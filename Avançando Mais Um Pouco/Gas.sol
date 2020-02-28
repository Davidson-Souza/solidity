/**
    Agora vamos considerar um aspecto muito importante na rede Ethereum, o Gas Cost.
    Tudo oque fazemos na rede, deve ser pago com uma certa quantia de uma moeda chamada Gas, que pode ser
    comprada com Ether's. O custo em Gas de uma função, depende da sua complexidade.
    Para calcular o custo de uma função, precisamos calcular o custo individual de cada operação (somar dois
    números é muito mais fácil do que acessar o disco), e então samá-los. Desta maneira, otimização é
    vital em Solidity, evitando que você e seus usuários pagem uma quantidade exagerada em Gas.
    Uma das explicações do porquê usar este sistema de Gas, está relacionado ao fato de que um indivíduo mal
    intencionado poderia rodar um loop infinito (ou mesmo sem querer), ou então drenar um poder computacional
    absurdo da rede, tornando-a lenta. Para previnir este problema, os criadores do Ethereum fizeram com que
    as transações não fossem grátis, e o custo calculado sobre o poder computacional drenado da rede.

    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/solidity
 */
 pragma solidity 0.6.1;         // Compilador usado


contract StructsSaveGas
{
    /**
        Você pode pensar em usar tipos memores, para econimizar espaço, e consequentemente Gas. Entretanto o
        Solidity sempre reserva 256 bits de dados, independente do tipo, uint8 e uint(uint256) usam o mesmo
        tanto de Gas.
        Mas existe um lugar onde esta regra não se aplica: structs!
        Em um struct, o Solidity reserva apenas a quantidade de memória demandada, portanto salva Gas.
    */

    // Uma struct normal
    struct NormalStruct {
        uint a;
        uint b;
        uint c;
    }
    // Mesma estrutura, usando menos espaço
    struct MiniMe {
        uint32 a;
        uint32 b;
        uint c;
    }

    // A "mini" irá demandar menos espaço, devido usar variáveis menores
    NormalStruct normal = NormalStruct(10, 20, 30);
    MiniMe mini = MiniMe(10, 20, 30);
}