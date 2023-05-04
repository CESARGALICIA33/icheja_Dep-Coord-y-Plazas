<?php
require_once ('Conexion/newconect.php');

// obtener valores del formulario


$data = array(
    'n_c' => $_POST['n_c'],
    'clave1' => $_POST['clave1'],
    'clave2' => $_POST['clave2'],
    'ubicacion' => $_POST['ubicacion'],
    'numero_inmueble' => $_POST['numero_inmueble'],
    'nombre_departamento' => $_POST['nombre_departamento'],
    'direccion' => $_POST['direccion'],
    'localizacion' => $_POST['localizacion']
);

$json_data = json_encode($data);

// preparar la consulta SQL
print_r($data);




$sql = "INSERT INTO departamentos (N_C, Clave1, Clave2, Ubicacion, Inmueble, Nombre_Depto, Direccion, Localizacion) 
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

$stmt = $conexion->prepare($sql);
$stmt->bind_param("sssssssss", $data['n_c'], $data['clave1'], $data['clave2'], $data['ubicacion'], $data['numero_inmueble'], $data['nombre_departamento'], $data['direccion'], $data['localizacion']);



// ejecutar la consulta y verificar si se insertó correctamente
if ($stmt->execute() === TRUE) {
    echo "Los datos se han insertado correctamente.";
    header('Location: AgregarDepa.php');
} else {
    echo "Error al insertar los datos: " . $stmt->error;
}


// cerrar la conexión a la base de datos
$stmt->close();
$conexion->close();


?>