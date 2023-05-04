<?php
require_once('Conexion.php');




// Obtener datos de la tabla de usuarios
    if(isset($_POST['usuarios'])){
    $idUsuarioSeleccionado = $_POST['usuarios'];
    echo "El usuario seleccionado tiene ID ".$idUsuarioSeleccionado;
                              }

?>
