// загрузка сразу
(function($) {
    // Внутри этой функции $() будет работать как синоним jQuery()
    

})(jQuery);

// после загрузки страници
jQuery(document).ready(function($) {
    // Внутри этой функции $() будет работать как синоним jQuery()



    $('.carousel').slick({
        centerMode: true,
        centerPadding: '0px',
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        variableWidth: true,
        focusOnSelect: false,
    });

    $('.slick_next_about').click(function(){
        $(".carousel").slick('slickNext');
        return false;
    });
    $('.slick_prev_about').click(function(){
        $(".carousel").slick('slickPrev');
        return false;
    });
    

    $('.carousel_reviews').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        variableWidth: true,

    });

    $('.slick_next_reviews').click(function(){
        $(".carousel_reviews").slick('slickNext');
        return false;
    });
    $('.slick_prev_reviews').click(function(){
        $(".carousel_reviews").slick('slickPrev');
        return false;
    });


    $('.carousel_abouts').slick({
        slidesToShow: 1,
    });

    $('.slick_next_abouts').click(function(){
        $(".carousel_abouts").slick('slickNext');
        return false;
    });
    $('.slick_prev_abouts').click(function(){
        $(".carousel_abouts").slick('slickPrev');
        return false;
    });
    //////////////////////////////////////////////////////////////

    $('.carousel_cat').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        dots: true,
        prevArrow:'<button type="button" class="abv_slick_prev"><div class="yellow"></div></button>',
        nextArrow: '<button type="button" class="abv_slick_next"><div class="yellow"></div></button>',
    });

    $('.carousel_cat .slick-dots li button').empty();
});

