<?php
session_start();
				$arregalo=$_SESSION['carrinho'];
				$total=0;
				$numero=0;
				for($i=0;$i<count($arregalo);$i++){
				if($arregalo[$i]['Id']==$_POST['Id']){
					$numero=$i;
					}
				 }	
				 $arregalo[$numero]['Quantidade']=$_POST['Quantidade'];
				 for($i=0;$i<count($arregalo);$i++){
				 $total=($arregalo[$i]['Preco']*$arregalo[$i]['Quantidade'])+$total;
			}
			$_SESSION['carrinho']=$arregalo;
			echo $total;		
					
?>
