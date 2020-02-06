/**
    Esta parte é muito importante. Existem dois lugares para os dados serem armazenados, em Solidity, e cada
    recebe um nome:
    storage: Variáveis salvas de maneira definitiva na blockchain, elas jamais serão apagadas.
    Memory:  Variáveis salvas apenas durante o processamento de uma transação, descartadas após o mesmo.
    Fazendo um paralelo com computadores físicos, storage seria o disco rígido e memory a memória RAM. Porém
    vale ressaltar que variáveis storage NUNCA serão apagadas (talvez modificadas, mas não apagadas), pois ficam
    na blockchain.
    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/soladity
 */
 /**
    Todos os dados declarados de maneira global em um contrato é do tipo storage.
    Já os declarados dentro de uma função, por padrão, é do tipo memory.
    Obviamente o solidity perimite a mudança do tipo de armazenamento.
  */
 pragma solidity >=0.6.0;      // Versão do compilador à ser usada

 contract SandwichFactory {
  struct Sandwich {
    string name;
    string status;
  }

  Sandwich[] sandwiches;

  function eatSandwich(uint _index) public {
    // Sandwich mySandwich = sandwiches[_index];

    // Parece bem inofensivo, mas a linguagem irá levantar um Warning, pedindo para
    // especificar "memory" ou "storage".

    // Então, usando a keyword "storage", você declara uma variável armazenada na blockchain.
    Sandwich storage mySandwich = sandwiches[_index];
    // Neste caso, mySandwich é um ponteiro para sandwiches[_index] na blockchain ...
    mySandwich.status = "Eaten!";
    // ... isto irá mudar permanentemente o valor armazenado.

    // Mas se você quiser apenas copiar, use memory ...
    Sandwich memory anotherSandwich = sandwiches[_index + 1];
    // ... aqui anotherSandwich será apenas uma cópia de sandwiches[_index + 1];
    // e se modificar algo em anotherSandwich ...
    anotherSandwich.status = "Eaten!";
    // ... não mudará nada em sandwiches[_index + 1]
    // Mas você pode fazer assim...
    sandwiches[_index + 1] = anotherSandwich;
    // ...se quiser que as mudanças se tornem efetivas na blockchain.
  }
}
// Em algum grau de abstração, as variáveis do tipo storage podem ser vistas como ponteiros, assim como no
// C e C++, onde criamos variáveis que "apontam" para um lugar na memória, e modificando o seu valor,
// você estará alterando o valor daquele endereço.