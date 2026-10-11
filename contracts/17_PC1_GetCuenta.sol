// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;
contract GetCuenta {
    function obtenerCuenta(string memory codigo) public pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(codigo))) % 15 + 1;
    } 
}