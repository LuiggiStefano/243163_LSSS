// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract ComplejosArrive {
        uint32[] public montos;

    function agregarMonto(uint32 _monto) public {
        montos.push(_monto);
    }

    function getMontos() public view returns(uint32[] memory) {
        return montos;
    }

    function saludar(uint32[] memory _nombres) public pure {
        for(uint i=0; i < _nombres.length; i++){
            console.log("Hola: ", _nombres[i]);
        }
    }

    function sumar() public view returns (uint256) {
        uint256 suma = 0;

        for (uint256 i = 0; i < montos.length; i++) {
            suma += montos[i];
        }

        console.log("La suma es:", suma);

        return suma;
    }
}