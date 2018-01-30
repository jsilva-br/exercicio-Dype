<?php


date_default_timezone_set('America/Sao_Paulo');
$data = date('d-m-Y');
echo "Data atual: ".$data;

$data1 = explode('-',$data);
echo "<br><br>Data invertida: ".$data1[2]."-".$data1[1]."-".$data1[0];




?>
