<?PHP
 
# PHP 7
$conexao = mysqli_connect('localhost','root','');
$banco = mysqli_select_db($conexao,'dype');
mysqli_set_charset($conexao,'utf8');
 
//$sql = mysqli_query($conexao,"SELECT EXTRACT(YEAR_MONTH FROM t.data_cadastro), p.id_pessoa, t.titulo FROM pessoa_trabalho pt, trabalho t, pessoa p WHERE pt.id_pessoa = p.id_pessoa AND pt.id_trabalho = t.id_trabalho") or die("Erro");
$sql = mysqli_query($conexao,"SELECT  * FROM pessoa_trabalho pt, trabalho t, pessoa p WHERE pt.id_pessoa = p.id_pessoa AND pt.id_trabalho = t.id_trabalho") or die("Erro");
?>
<table border = 1>
<tr>
<td>Mês</td><td>Pessoas</td><td>Trabalhos</td>
<?php
while($dados=mysqli_fetch_assoc($sql))
    {
		$mes = $dados['data_cadastro'];
		$mes = substr("$mes", -5,2);
		$ano = $dados['data_cadastro'];
		$ano = substr("$ano",0,-6);
			
        echo "<tr><td>".$mes."/".$ano."</td><td align=right>".$dados['id_pessoa']."</td><td align=right>".$dados['titulo']."<br>";
    }
?>
</table>