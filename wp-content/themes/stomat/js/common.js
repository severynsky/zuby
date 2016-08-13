jQuery(document).ready(function($) {
    var countItems;
    var w = $(window).width();
    if (w <= 539) {
        $('.register_button a').text('Записатися на прийом');
        $('.head_name').text('Ціни на послуги');

        $('.treatment .item').clone().appendTo(".items");
        $('.treatment .col-md-4').remove();

        $(".items").slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            infinite: true,
            arrows: false,
            centerMode: true,
            variableWidth: true,
        });
        countItems = $('.treatment div[aria-describedby]').length;
        $('#slickCounter').text('(1/'+countItems+')')
    }

    $("#tablet-menu-button-open").click(function() {
        if($(window).width()>=320) {
            $(".second .tablet-menu-wrap").fadeIn('fast');
        } else {
            $(".second .mobil-menu").fadeIn('fast');
        }

    });

    $("#tablet-menu-button-close").click(function() {
        $(".second .tablet-menu-wrap").fadeOut('fast');
        $(".second .mobil-menu").fadeOut('fast');
    });

    $('.items').on('afterChange', function(event, slick, currentSlide){
        $('#slickCounter').text('('+(currentSlide+1)+'/'+countItems+')');
    });

    $( ".menu-toggle" ).click(function() {
        $('.hamburger_menu').fadeIn('slow');
    });

    $( ".close_button" ).click(function() {
        $('.hamburger_menu').fadeOut('slow');
    });

    $( ".min_call_wrap a" ).click(function() {
        $('.min_call_wrap').fadeOut('fast');
        $('.max_call_wrap').fadeIn('slow');
        return false
    });

    $(".slider_top").slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        prevArrow:'<div class="slick-prev"><img src="' + window.location.protocol +
        '//' + location.hostname + '/wp-content/themes/stomat/images/arrow_left.svg" alt=""></div>',
        nextArrow: '<div class="slick-next"><img src="' + window.location.protocol +
        '//' + location.hostname + '/wp-content/themes/stomat/images/arrow_right.svg" alt=""></div>',
        responsive: [
            {
                breakpoint: 540,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '22px',
                    slidesToShow: 1
                }
            },
        ]
    });

    $(".slider_bottom").slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        infinite: true,
        prevArrow:'<div class="slick-prev"><img src="' + window.location.protocol +
        '//' + location.hostname + '/wp-content/themes/stomat/images/arrow_left.svg" alt=""></div>',
        nextArrow: '<div class="slick-next"><img src="' + window.location.protocol +
        '//' + location.hostname + '/wp-content/themes/stomat/images/arrow_right.svg" alt=""></div>',
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    arrows: false,
                    centerMode: true,
                    centerPadding: '100px',
                    slidesToShow: 1
                }
            },
        ]
    });

    $(".register_form br").remove();

    $( ".register_form input[type='text']" ).focus(function() {
        $( this ).parents().prev( "label" ).css( {
            "font-size": "10px",
        } );
        $(this).css({
            "border-bottom":"1px solid #9d9d9d",
        })
    });

    $( ".register_form input[type='text']" ).focusout(function() {
       if(!$(this).val().length){
           $( this).parents().prev( "label" ).css( {
               "font-size": "14px",
           } );
           $(this).css({

               "border-bottom":"1px solid #f2f2f2",
           });
       }

    });

    $( "#reason" ).change(function() {
        if($("#reason :selected").val() != 'Причина звернення'){
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

});

