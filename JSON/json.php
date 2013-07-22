<?php

class Producto{
	public $id;
	public $nombre;
	public $precio;
	public $categoria;	
}

$articulo_1 = new Producto;
$articulo_1->id = 1;
$articulo_1->nombre = "Carro Juguete";
$articulo_1->precio = "$150.000";
$articulo_1->categoria = "Infantil";

$articulo_2 = new Producto;
$articulo_2->id = 2;
$articulo_2->nombre = "Moto Juguete";
$articulo_2->precio = "$300.000";
$articulo_2->categoria = "Infantil";

$array = array($articulo_1 ,$articulo_2 );
/*
$articulos = [
	"articulo 1" => $articulo_1, 
	"articulo 2" => $articulo_2
	];
*/
$encode = json_encode($array);

echo '{"articulos" : '.$encode.'}';

?>