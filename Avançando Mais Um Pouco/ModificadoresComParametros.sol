/**
    Em algum arquivo anterior, vimos os modificadores. Comandos usados para adicionar funcionalidades
    ou propriedades extras para as funções, podendo ser reutilizados infinitas vezes.
    Porém, o onlyOwner que vimos não pede nenhum parâmetro, ele sempre fará a mesma coisa.
    Mas no Solidity podemos passar parâmetros para a tomada de decisão pelo modificador, o que pode ser
    muito útil, visto que funções públicas podem ser, virtualmente, acessadas por qualquer um que tenha
    acesso à blockchain

    Exemplos retirados do site: www.cryptozombies.io
    Author: Davidson Souza
    Data: Feb, 2020
    Source: https://github.com/Davidson-Souza/solidity
 */

contract ModificadoresComParametros{
    // Um mapping usado para salvar a idade do usuário
    mapping (uint => uint) public age;

    // Modificador que requere que a idade do usuário seja maior 
    // que a idade expecificada em _age
    modifier olderThan(uint _age, uint _userId) {
        require(age[_userId] >= _age);
        _;
    }

    // Deve ser maior de 18 para dirigir (no Brasil)
    // Para passar os parâmetros, basta fazer como abaixo
    function driveCar(uint _userId) public olderThan(18, _userId) {
        // Código da função
    }
}
