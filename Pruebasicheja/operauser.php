<?php
require_once('Conexion.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    // obtener valores del formulario
    $nousu = isset($_POST['nousu']) ? $_POST['nousu'] : '';
    $nomusuario = isset($_POST['nomusuario']) ? $_POST['nomusuario'] : '';
    $NumTel = isset($_POST['NumTel']) ? $_POST['NumTel'] : '';

    // preparar la consulta SQL
    $sql = "INSERT INTO usuarios (No_User, Nombre, Telefono) VALUES (?, ?, ?)";
    $stmt = $conexion->prepare($sql);
    
    $stmt->bind_param('sss', $nousu, $nomusuario, $NumTel);

    // ejecutar la consulta y verificar si se insertó correctamente
    if ($stmt->execute()) {
        $response = [
            'status' => 'success',
            'message' => 'Los datos se han insertado correctamente.'
        ];
    } else {
        $response = [
            'status' => 'error',
            'message' => 'Error al insertar los datos: ' . $stmt->error
        ];
    }

    // cerrar la conexión a la base de datos
    $stmt->close();
    $conexion->close();
    header('Location: AgregarUsuario.php');

    // enviar la respuesta como JSON
    header('Content-Type: application/json');
    echo json_encode($response);
    exit;
}

?>
