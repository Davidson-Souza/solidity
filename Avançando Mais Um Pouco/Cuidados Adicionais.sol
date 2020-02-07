/**
    Algo muito importante para se ressaltar é a imutabilidade dos contratos, isto é: uma vez que um contrato
    esteja na blockchain, ele é imutável, e todas as variáveis inicializadas imediatamente, não poderão ser
    mudadas.
    Agora imagine o seguinte: Um contrato, que é diretamente atrelado ao seu, digamos uma dependência do seu,
    seja invalidado, ou dê algum problema nele e ele seja reescrito, ou simplesmente suma. Como fazer para
    mudar o endereço na interface? Se tiver feito como no "interagindoComOutrosContratos.sol", será impossível,
    mas uma dica bem simples pode ser aplicada para resolver isto.
    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/soladity
 */
pragma solidity >=0.6.0;      // Versão do compilador à ser usada
// Contrato que será acessado de outro. Ele recebe o número da sorte de uma pessoa, e mapeia com o userId
// do mesmo, assim, se outros quiserem acessar este número, basta consultar pelo id. (Idêntico até aqui)
contract LuckyNumber {
    mapping(address => uint) numbers;
    function setNum(uint _num) public {
        numbers[msg.sender] = _num;
    }

  function getNum(address _myAddress) public view returns (uint) {
    return numbers[_myAddress];
  }
}

// Interface, que será usada para interagir com o contrato acima. (Nada demais)
contract NumberInterface {
    // Apenas assine, não crie o corpo (com as {}), ele servirá de middware entre os contratos.
    // Para assinar é só finalizar com o delimitador de semi-coluna (;).
    function getNum(address _myAddress) public view returns (uint);
    // Pronto, interface criada com sucesso!
}

// Contrato que irá interagir com o outro, usando a interface acima declarada
contract MyContract {
    // O endereço público do contrato na rede, ele varia de contrato para contrato.
    // address NumberInterfaceAddress = ;   // Aqui está o problema, se o contrato for para a blockchain isto será imutável
    // Instancia a interface, apontando para o LuckyNumber
    NumberInterface numberContract;
    function setNumberInterfaceAddress (address _address) external
    {
        // Aqui você mudo o endereço da interface
        // O acesso é feito de fora do contrato
        // Este não é o único jeito de fazer isto
        numberContract = NumberInterface(_address);
        // Mas funciona!
    }
    // ... Agora para usar a interface é só fazer como qualquer objeto.
  function someFunction() public {
    // Agora podemos chamar a função "getNum":
    uint num = NumberContract.getNum(msg.sender);
    // ...e use ela qui para alguma coisa ...
  }
}