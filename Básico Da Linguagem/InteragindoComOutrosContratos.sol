/**
    Em Solidity, ainda temos a opção de interagir com outros contratos na blockchain.
    Para isto precisamos criar uma interface, que é similar à um novo contrato, como uma fução "assinada",
    o que significa que ela não terá apenas a parte de declaração, e não o bloco de código,
    delimitado por {}.

    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/solidity
 */
pragma solidity >=0.6.0;      // Versão do compilador à ser usada
// Contrato que será acessado de outro. Ele recebe o número da sorte de uma pessoa, e mapeia com o userId
// do mesmo, assim, se outros quiserem acessar este número, basta consultar pelo id.
contract LuckyNumber {
    mapping(address => uint) numbers;
    function setNum(uint _num) public {
        numbers[msg.sender] = _num;
    }

  function getNum(address _myAddress) public view returns (uint) {
    return numbers[_myAddress];
  }
}

// Interface, que será usada para interagir com o contrato acima.
contract NumberInterface {
    // Apenas assine, não crie o corpo (com as {}), ele servirá de middware entre os contratos.
    // Para assinar é só finalizar com o delimitador de semi-coluna (;).
    function getNum(address _myAddress) public view returns (uint);
    // Pronto, interface criada com sucesso!
}

// Contrato que irá interagir com o outro, usando a interface acima declarada
contract MyContract {
    // O endereço público do contrato na rede, ele varia de contrato para contrato.
    address NumberInterfaceAddress = 0x06012c8cf97BEaD5deAe237070F9587f8E7A266d;    // Este endereço é do contrato CryptoKitties, apenas para ilustrar
    // Instancia a interface, apontando para o LuckyNumber
    NumberInterface numberContract = NumberInterface(NumberInterfaceAddress);
    // ... Agora para usar a interface é só fazer como qualquer objeto.
  function someFunction() public {
    // Agora podemos chamar a função "getNum":
    uint num = numberContract.getNum(msg.sender);
    // ...e use ela qui para alguma coisa ...
  }
}