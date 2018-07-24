jQuery(document).ready(function($) {

    //Margin because of fixed Header
    var headerHeight = $('header').height();
    $('#slider').css('margin-top', 'calc(50px + ' + headerHeight + 'px)');
    $('.top-margin').css('margin-top', 'calc(50px + ' + headerHeight + 'px)');

    //Slider
    $('#slider').basicSlider();

    //Active Menu
    // Get current path and find target link
    var path = window.location.pathname.split("/").pop();
    
    // Account for home page with empty path
    if ( path == '' ) {
        path = 'index.php';
    }
        
    var target = $('nav a[href="'+path+'"]');
    // Add active class to target link
    target.addClass('active');

});