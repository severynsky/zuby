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
            $(".second .mobil-menu-wrap").fadeIn('fast');
        }

    });

    $("#tablet-menu-button-close").click(function() {
        $(".second .tablet-menu-wrap").fadeOut('fast');
    });

    $("#mobil-menu-button-close").click(function() {
        $(".second .mobil-menu-wrap").fadeOut('fast');
    });

    $('.items').on('afterChange', function(event, slick, currentSlide){
        $('#slickCounter').text('('+(currentSlide+1)+'/'+countItems+')');
    });

    $( ".menu-toggle" ).click(function() {
        $('.hamburger_menu').fadeIn('slow');
        $("html,body").css("overflow","hidden");
    });

    $( ".close_button" ).click(function() {
        $('.hamburger_menu').fadeOut('slow');
    });

    $( ".close-button-white" ).click(function() {
        $('.max_call_wrap').fadeOut('slow');
    });

    $(".hamburger_menu li a").click(function(){
        $('.hamburger_menu').hide();
    });

    $(".slider_top").slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        infinite: true,
        prevArrow:'<div class="slick-prev"><img src="' + window.location.protocol +
        '//' + location.hostname + '/wp-content/themes/stomat/images/arrow_left.svg" alt=""></div>',
        nextArrow: '<div class="slick-next"><img src="' + window.location.protocol +
        '//' + location.hostname + '/wp-content/themes/stomat/images/arrow_right.svg" alt=""></div>',
        //centerMode: false,
        //centerPadding: '15px',
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

    ///////////////////////////скрол///////////////////////////////////

    $(this).on('click', 'a[href^=#]', function () {
        if ($(this).hasClass('close_button')){
            $("html,body").css("overflow","auto");
            return false;
        }
        if ($(this).hasClass('close-button-white')){
            $("html,body").css("overflow","auto");
            return false;
        }
        $('html, body').animate({ scrollTop:  $('a[name="'+this.hash.slice(1)+'"]').offset().top }, 1000 );
        $("html,body").css("overflow","auto");
        return false;
    });

    var startPos;
    $( ".min_call_wrap a" ).click(function() {
        $('.min_call_wrap').fadeOut('fast');
        $('.max_call_wrap').fadeIn('slow');
        startPos = $(window).scrollTop();
        return false
    });

    $(window).scroll(function()
    {
        if (startPos){
            var difference = startPos - $(window).scrollTop();
            if (difference >100 || difference<100){
                $('.max_call_wrap').fadeOut('slow');
                $('.min_call_wrap').fadeIn('slow');
                startPos = false;
            }
        }
    });
    /////////close over ////////////////////
    $(document).mouseup(function (e) {
        var container = $(".max_call_wrap");
        if (container.has(e.target).length === 0){
            container.fadeOut('slow');
            $('.min_call_wrap').fadeIn('slow');
        }
    });
    ////////////////////////menu///////////////////////////////
6
// Cache selectors
    var lastId,
        topMenu = $("#primary-menu"),
        topMenuHeight = topMenu.outerHeight()+15,
    // All list items
        menuItems = topMenu.find("a"),
    // Anchors corresponding to menu items
        scrollItems = menuItems.map(function(){
            var item = $($(this).attr("href"));
            if (item.length) { return item; }
        });

// Bind click handler to menu items
// so we can get a fancy scroll animation
    menuItems.click(function(e){
        var href = $(this).attr("href"),
            offsetTop = href === "#" ? 0 : $(href).offset().top-topMenuHeight+1;
        $('html, body').stop().animate({
            scrollTop: offsetTop
        }, 300);
        e.preventDefault();
    });

// Bind to scroll
    $(window).scroll(function(){
        // Get container scroll position
        var fromTop = $(this).scrollTop()+topMenuHeight;

        // Get id of current scroll item
        var cur = scrollItems.map(function(){
            if ($(this).offset().top < fromTop)
                return this;
        });
        // Get the id of the current element
        cur = cur[cur.length-1];
        var id = cur && cur.length ? cur[0].id : "";

        if (lastId !== id) {
            lastId = id;
            // Set/remove active class
            menuItems
                .parent().removeClass("active")
                .end().filter("[href='#"+id+"']").parent().addClass("active");
        }
    });

    ///////////////////////////////////////////////////////////////

});

