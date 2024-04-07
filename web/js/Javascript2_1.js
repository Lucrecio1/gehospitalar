$(document).ready(function(){   

    $('#busca').keyup(function(){

        $('form').submit(function(){

            var dados = $(this).serialize();

            $.ajax({

                url: "ProFatura.php",
                type: 'POST',
                datatype: 'html',
                data: dados,
                success: function(data){

                    $('#resultado').empty().html(data);
                }
            })
            return false;
        });

        $('form').trigger('submit');


    });



});