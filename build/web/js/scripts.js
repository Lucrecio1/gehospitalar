var inicio=function (){
	$(".quantidade").keyup(function(e){
		if($(this).val()!=''){
			if(e.keyCode==13){
	   			var id=$(this).attr('data-id');
				var preco=$(this).attr('data-preco');
				var quantidade=$(this).val();
				$(this).parentsUntil('.produto').find('.subtotal').text('Subtotal: '+(preco*quantidade));
				$.post('js/modificardados.php',{
					Id:id,
					Preco:preco,
					Quantidade:quantidade
					},function(e){
					 $("#total").text('Total: '+e);
						});		
	   				}
	  			}
			});
			$(".eliminar").click(function(e){
			e.preventDefault();
			var id=$(this).attr('data-id');
			$(this).parentsUntil('.produto').remove();
			$.post('js/eliminar.php',{
				Id:id

			},function(a){
				if(a=='0'){
					location.href="./carrinho_de_compras.php";
				}

			});

	});
}
	$(document).on('ready',inicio);
	