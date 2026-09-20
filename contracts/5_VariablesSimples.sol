// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract VariablesSimples {
    uint256 private edad; //por defecto toma el valor de cero

    constructor (uint256 _edad) {
        edad = _edad;
    }
    
    function cambiarEdad(uint256 _edad) public {
        edad = _edad;
    }
    
    function devolverEdad() view public returns (uint256) {
        return edad;
    }
}