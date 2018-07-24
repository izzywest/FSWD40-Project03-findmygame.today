jQuery(document).ready(function($) {

    //Margin because of fixed Header
    var headerHeight = $('header').height();
    $('#slider').css('margin-top', 'calc(50px + ' + headerHeight + 'px)');

    //Slider
    $('#slider').basicSlider();

});