// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

import "hardhat/console.sol";

contract Universidad243163 {

    struct Estudiante {
        uint256 id;
        string nombre;
        uint256 edad;
        string carrera;
        bool estado; 
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
        string memory _carrera,
        bool _estado
    ) public {
        require(_id % 2 == 0, "No se permiten ids impares");
        estudiantes.push(Estudiante(_id, _nombre, _edad, _carrera, _estado));
    }

    function contarElementos() public view returns (uint256) {
        return estudiantes.length;
    }

    function cambiarDireccion(address _nueva) public {
        direccion = _nueva;
    }
    function mostrarActivos() external view {
        for (uint256 i = 0; i < estudiantes.length; i++) {
            if (estudiantes[i].estado) {
                console.log("Estudiante activo", estudiantes[i].id, estudiantes[i].nombre);
            }
        }
    }

    function inactivar(uint256 _id) external {
        for (uint256 i = 0; i < estudiantes.length; i++) {
            if (estudiantes[i].id == _id) {
                estudiantes[i].estado = false;
            }
        }
    }
}