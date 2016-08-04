jQuery(document).ready(function($) {
    $('.top_slider .owl-carousel').owlCarousel({
        center: true,
        items:1,
        loop:true
    });
    $('.bottom_slider .owl-carousel').owlCarousel({
        //center: true,
        items:4,
        loop:true
    });
});