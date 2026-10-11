// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

import "hardhat/console.sol";

contract Universidad243163 {

    struct Estudiante {
        uint256 id;
        string nombre;
        uint256 edad;
        string carrera;
    }

    Estudiante[] public estudiantes;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;      // 15
        direccion = msg.sender;
    }

    function agregarElemento(
        uint256 _id,
        string memory _nombre,
        uint256 _edad,
        string memory _carrera
    ) public {
        require(_id % 2 == 0, "No se permiten ids impares");
        estudiantes.push(Estudiante(_id, _nombre, _edad, _carrera));
    }

    function contarElementos() public view returns (uint256) {
        return estudiantes.length;
    }

    function cambiarDireccion(address _nueva) public {
        direccion = _nueva;
    }
}