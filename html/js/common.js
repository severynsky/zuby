// загрузка сразу
(function($) {
    // Внутри этой функции $() будет работать как синоним jQuery()
    

})(jQuery);

// после загрузки страници
jQuery(document).ready(function($) {
    // Внутри этой функции $() будет работать как синоним jQuery()
    $(".slider_top").owlCarousel({
        navigation : true, // Show next and prev buttons
        loop: true,
        nav: true,
        navText:['<img src="./images/arrow_left.svg" alt="">','<img src="./images/arrow_right.svg" alt="">'],

        items : 1,
    });
    $(".slider_bottom").owlCarousel({
        navigation : true, // Show next and prev buttons
        loop: true,
        nav: true,
        margin: 30,
        navText:['<img src="./images/arrow_left.svg" alt="">','<img src="./images/arrow_right.svg" alt="">'],
        items : 4,
    });

    $( ".register_form input[type='text']" ).focus(function() {
        $( this ).prev( "label" ).css( {
            "font-size": "10px",
           //"margin-top": "-10px",
           //"margin-bottom": "10px",

        } );
        $(this).css({
            //"padding-bottom":"10px",
            //"margin-bottom":"15px",
            "border-bottom":"1px solid #9d9d9d",
        })
    });
    $( ".register_form input[type='text']" ).focusout(function() {
       if(!$(this).val().length){
           $( this ).prev( "label" ).css( {
               "font-size": "14px",
               //"margin-top": "10px",
               //"margin-bottom": "-10px",
           } );
           $(this).css({
               //"padding-bottom":"-10px",
               //"margin-bottom":"-15px",
               "border-bottom":"1px solid #f2f2f2",
           });
       }

    });
    $( "#reason" ).change(function() {
        if($("#reason :selected").val()){
            $(this).css({
                "color":"#3e3e3e",
                "border-bottom":"1px solid #9d9d9d",
            });
        } else {
            $(this).css({
                "color":"#9d9d9d",
                "border-bottom":"1px solid #f2f2f2",
            });
        }
    });
    ;
});

