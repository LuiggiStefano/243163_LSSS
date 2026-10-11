// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Sender {
   uint256 private cantidad = 20;
   address public  cuentaInicial;

   constructor (uint256 _cantidad){
    cantidad = _cantidad;
    cuentaInicial = msg.sender;
   }

   function cambiarCantidad(uint256 _cantidad) public {
        cantidad = _cantidad;
        cuentaInicial = msg.sender;
    }
   function obtenerCantidad() public view returns(uint256) {
    return cantidad;

   }

   function sumar(uint256 _valor1, uint256 _valor2) public pure returns(uint256){
      return _valor1 + _valor2;
   }
}