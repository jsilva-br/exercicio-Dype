<?PHP
 
# PHP 7
$conexao = mysqli_connect('localhost','root','');
$banco = mysqli_select_db($conexao,'dype');
mysqli_set_charset($conexao,'utf8');
 

$sql = mysqli_query($conexao,"SELECT t.data_cadastro, t.titulo, p.nome FROM trabalho t, pessoa_trabalho pt, pessoa p  WHERE YEAR(t.data_cadastro) = YEAR(now()) AND MONTH(t.data_cadastro) =  MONTH(now()) AND pt.id_pessoa = p.id_pessoa and t.id_trabalho = pt.id_trabalho") or die("Erro");
                                   

$rs = mysqli_query($conexao,"SELECT  * FROM pessoa");   
$n = array(); 								
while($data = FetchRow($rs)){ 			
     $n[] = $data["nome"];	               
}
echo implode("<br/>",$n);
?>