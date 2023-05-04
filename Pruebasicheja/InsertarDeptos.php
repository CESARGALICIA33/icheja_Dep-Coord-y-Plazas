<?php
require_once('Conexion.php');

// Obtener el valor seleccionado del select con opciones dinámicas
if(isset($_POST['usuarios'])) {
    $idUsuario = mysqli_real_escape_string($conexion, $_POST['usuarios']);
}

// Obtener los demás valores del formulario y escaparlos para prevenir inyecciones SQL
$n_c = mysqli_real_escape_string($conexion, $_POST['n_c']);
$clave1 = mysqli_real_escape_string($conexion, $_POST['Clave1']);
$clave2 = mysqli_real_escape_string($conexion, $_POST['Clave2']);
$ubicacion = mysqli_real_escape_string($conexion, $_POST['Ubicacion']);
$no_inmueble = mysqli_real_escape_string($conexion, $_POST['No_inmueble']);
$nombre_dep = mysqli_real_escape_string($conexion, $_POST['No_dep']);
$direccion = mysqli_real_escape_string($conexion, $_POST['Direccion']);
$localizacion = mysqli_real_escape_string($conexion, $_POST['Localizacion']);

// Preparar la consulta SQL utilizando parámetros
$stmt = $conexion->prepare("INSERT INTO departamentos (IdDeptos, N_C, Clave1, Clave2, Ubicacion, Inmueble, Nombre_Depto, Direccion, Localizacion) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("sssssssss", $idUsuario, $n_c, $clave1, $clave2, $ubicacion, $no_inmueble, $nombre_dep, $direccion, $localizacion);

// Ejecutar la consulta
if ($stmt->execute()) {
    header('Location: AgregarDepa.php');
    echo "Registro insertado correctamente";
} else {
    echo "Error al insertar registro: " . $stmt->error;
}

// Cerrar conexión a la base de datos
$conexion->close();
?>
