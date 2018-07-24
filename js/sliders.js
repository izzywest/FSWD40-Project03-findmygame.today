(function ( $ ) {

    $.fn.basicSlider = function()  {
    
    var width = $(this).width();
    var animationSpeed = 500;
    var pause = 3000;
    var currentSlide = 1;
    var length = $('.slides').children().length;
    var $slider         = $(this);
    var $slideContainer = $slider.find('.slides');
    var $slides         = $slideContainer.find('.slide');
    var interval, timeout;
    var restart = 0;
    var delayed = false;
        

    
    function init() {
        interval = setInterval(startSlider, pause);
        $('.loading').animate({"width": width}, pause);
    }
    
    function startSlider()   {
        $( '.loading').stop().css('width','0');
        $('.loading').animate({"width": width}, pause);        
        if (currentSlide < length)  {
            currentSlide++
                $(' .slides').animate({"marginLeft": "-="+width},animationSpeed);
                
        } else if(currentSlide == length) {
            if (currentSlide === length)    {
                $('.slides').animate({"marginLeft": "0"},animationSpeed);
                currentSlide = 1;
            }
        }
    }
    
    function stopSlider()   {
        clearTimeout(timeout);
        clearInterval(interval);
        
    }
    
    function clearLoading() {
        $('.loading').stop().css('width','0');
    }
    
    $('#slider').on('mouseenter', function()    {
        $('.slides').finish();        
        clearLoading();
        stopSlider();
    }).on('mouseleave', function()  {
        stopSlider()
        timeout = setTimeout(init, 3000)
        }
    );
    
    $('.arrow-left').click(function()    {
        if (currentSlide > 1)   {
            clearTimeout(timeout);
            clearInterval(interval);
            $('.slides').stop().animate({"marginLeft": "+="+width},animationSpeed);            
            currentSlide--;            
        }
    });
    
    $('.arrow-right').click(function()    {
        if (currentSlide < length)  {
            clearTimeout(timeout);
            clearInterval(interval);
            $('.slides').stop().animate({"marginLeft": "-="+width},animationSpeed);            
            currentSlide++;
        }
    });    
    
    
    
    
    init();
        
    }

 
}( jQuery ));