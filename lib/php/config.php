<?php
header("Content-Type: application/json");
$json = file_get_contents('php://input');
$data = json_decode($json);
$accion = $data->accion ?? '';
$password = $data->password ?? '';

if($password == 'localhost12345674157asdfadf558asdf44asdfasdf6'){
    switch($accion){
        case 'obtener_configuracion':
            // Leer el contenido del archivo JSON remoto
            $json = file_get_contents('https://www.appedir.net/figus/config.json');

            // Decodificar el contenido JSON a una matriz de PHP
            $data = json_decode($json, true);
            // Hacer algo con los datos si es necesario...
            // Codificar los datos de vuelta a JSON
            $json_response = json_encode($data);
            // Establecer las cabeceras de respuesta para indicar que se envía JSON
            header('Content-Type: application/json');
            // Devolver los datos JSON al cliente
            //echo $json_response;
            print_r('{"codigo": "1", "detalles": '  . $json_response .  '}');
        }
    }
?>