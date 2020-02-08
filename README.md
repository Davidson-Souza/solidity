# solidity
"Solidity is an object-oriented, high-level language for implementing smart contracts. Smart contracts are programs which govern the behaviour of accounts within the Ethereum state.
Solidity was influenced by C++, Python and JavaScript and is designed to target the Ethereum Virtual Machine (EVM).
Solidity is statically typed, supports inheritance, libraries and complex user-defined types among other features.
With Solidity you can create contracts for uses such as voting, crowdfunding, blind auctions, and multi-signature wallets.
When deploying contracts, you should use the latest released version of Solidity. This is because breaking changes as well as new features and bug fixes are introduced regularly. We currently use a 0.x version number to indicate this fast pace of change." <a href="https://solidity.readthedocs.io/en/v0.6.2/"> ReadTheDocs.io</a>
Trata-se de uma linguagem de programação, usada para escrever smart contracts na rede Ethereum. 
## Ethereum 
É uma plataforma totalmente descentralizada, baseada em blockchain. A rede permite os mais diversos tipos de processamento, incluindo, por exemplo jogos, redes sociais, transações financeiras, firmas onchain, etc.
Diferentemente do bitcoin e as demais altcoins, que possuem uma função específica, e cada modificação é custosa e ineficiente, a rede Ethereum provém uma máquina,Turing complete, que roda com a garantia dos algoritmos de concenso criptográficos. O ethereum usa um sistema de concenso híbrido (<strong>POW</strong> e <strong>POS</strong>).

### Oque pode ser feito com isto?
A rede Ethereum é muito poderosa, consegue processar desde transações bancárias, passando por contratos e firmas totalmente descentralizada, e até jogos! <br>
Games online que nescessitem de um alto nível de confiaça (anti-trapaça por exemplo), podem usar a segurança da blockchain, deixando o grosso do processamento nas mãos dos mineradores.<br>
Firmas podem ser baseadas apenas em um contrato inteligente, e todos os colaboradores interagem com ele.<br>
Comércios eletrônicos podem usar a blockchain para realizar as transações de maneira segura<br>
Enfim, uma quantidade absurda de coisas, com a confiaça e poder da blockchain.

# Links:
<ul>
  <li>Um tutorial dinâmico e divertido, para quem não sabe nada de Solidity: <a href="https://cryptozombies.io/">CryptoZombies</a></li>
<li>Ethereum wiki, com mais informações sobre a rede: <a href="https://github.com/ethereum/wiki/wiki"> Ethereum on GitHub</a></li>
 <li>Site oficial do projeto, com mais informações e últimos lançamentos: <a href="https://solidity.readthedocs.io/en/v0.6.2/">Solidity Oficial Site</a></li>
 <li> Site oficial do Ethereum <a href="https://ethereum.org/">Ethereum.org</a></li>
 <li> Paper do Ethereum, apresentando a plataforma: <a href="http://gavwood.com/Paper.pdf">Ethereum's paper</a></li>
 <li> Artigo sobre o algorítimo de Hash usado na plataforma: <a href="http://fchabaud.free.fr/English/Publications/sha.pdf">Artigo</a></li>
</ul>

# Index:

##  Parte introdutória
  Estes arquivos são uma introdução à linguagem, apenas um contato prévio e descontraído com a linguagem 👍🙃
  <ul>
  <li><a href="https://github.com/Davidson-Souza/solidity/blob/master/B%C3%A1sico%20Da%20Linguagem/ConceitosIniciais.sol"><strong>ConceitosIniciais.sol</strong></a>: Primeiro arquivo, onde é apresentada a linguagem e conceitos básicos, como contratos, operadores, vetores, etc.</li>
  <li><a href="https://github.com/Davidson-Souza/solidity/blob/master/Básico%20Da%20Linguagem/CapituloII.sol"><strong>CapituloII.sol</strong></a>: São apresentadas outras estruturas, como mapping e address. Além de conceitos como <i>pure</i> e <i>view</i>.</li>
  <li><a href="https://github.com/Davidson-Souza/solidity/blob/master/B%C3%A1sico%20Da%20Linguagem/Hierarquia.sol"><strong>Hierarquia.sol</strong></a>: Aqui é apresentado o conceito de hierarquia de contratos em Solidity</li>
  <li><a href="https://github.com/Davidson-Souza/solidity/blob/master/Básico%20Da%20Linguagem/Incudes.sol"><strong>Includes.sol</strong></a>: Introdução ao conceito de módulos e includes em Solidity</li>
  <li><a href="https://github.com/Davidson-Souza/solidity/blob/master/Básico%20Da%20Linguagem/DataLocation.sol"><strong>DataLocation.sol</strong></a>: Locais de armazenamento de variáveis</li>
  <li><a href="https://github.com/Davidson-Souza/solidity/blob/master/Básico%20Da%20Linguagem/Visibilidade.sol"><strong>Visibilidade.sol</strong></a>: Visibilidade de funções em contratos na rede</li>
  <li><a href="https://github.com/Davidson-Souza/solidity/blob/master/Básico%20Da%20Linguagem/Visibilidade.sol"><strong>InteragindoComOutrosContratos.sol</strong></a>: Como interagir com outros contratos na rede</li>
  <li><a href="https://github.com/Davidson-Souza/solidity/blob/master/Básico%20Da%20Linguagem/FunçoesComMultiplosRetornos.sol"><strong>FunçoesComMultiplosRetornos.sol</strong></a>: Declarando e invocando função com múltiplos retornos</li>
</ul>

## Falando mais sério...
<ul>
  Agora vamos um pouco mais fundo na linguagem, com conceios e políticas que garantem códigos melhores e mais "smart" 😜
  <li><a href="https://github.com/Davidson-Souza/solidity/blob/master/Avançando%20Mais%20Um%20Pouco/Cuidados%20Adicionais.sol"><strong>Cuidados Adicionais.sol</strong></a>: Declarando e invocando função com múltiplos retornos</li>
  <li><a href="https://github.com/Davidson-Souza/solidity/blob/master/Avançando%20Mais%20Um%20Pouco/OwnableContract.sol">OwnableContract.sol</a>: Tem como fazer um contrato possuir um dono? Sim! Vejamos como...</li>
</ul>
