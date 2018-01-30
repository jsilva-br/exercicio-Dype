<?PHP
 
# PHP 7
$conexao = mysqli_connect('localhost','root','');
$banco = mysqli_select_db($conexao,'dype');
mysqli_set_charset($conexao,'utf8');
 

$sql = mysqli_query($conexao,"SELECT t.data_cadastro, t.titulo, p.nome FROM trabalho t, pessoa_trabalho pt, pessoa p  WHERE YEAR(t.data_cadastro) = YEAR(now()) AND MONTH(t.data_cadastro) =  MONTH(now()) AND pt.id_pessoa = p.id_pessoa and t.id_trabalho = pt.id_trabalho") or die("Erro");
?>
<table border = 1>
<tr>
<td>Mês/Ano</td><td>Titulo</td><td>Pessoas</td>
<?php
while($dados=mysqli_fetch_assoc($sql))
    {
		$mes = $dados['data_cadastro'];
		$mes = substr("$mes", -5,2);
		$ano = $dados['data_cadastro'];
		$ano = substr("$ano",0,-6);
			
        echo "<tr><td>".$mes."/".$ano."</td><td align=right>".$dados['titulo']."</td><td align=right>".$dados['nome']."<br>";
    }
?>
</table>