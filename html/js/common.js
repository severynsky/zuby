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
        //singleItem:true

        // "singleItem:true" is a shortcut for:
        items : 1,
        // itemsDesktop : false,
        // itemsDesktopSmall : false,
        // itemsTablet: false,
        // itemsMobile : false

    });
});

