// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Console {
    uint256 private cantidad = 30;

    function cambiarCantidad(uint256 _cantidad) public {
        cantidad = _cantidad;
        console.log("Deployado por: ", msg.sender);
    }

    function obtenerCantidad() public view returns(uint256) {
        console.log("Invocado por: ", msg.sender);
        return cantidad;
    }
}