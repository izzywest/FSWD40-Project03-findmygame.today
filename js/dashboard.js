$(document).ready(function () {

    //expand sub-nav
    function handler1() {
        $(this).addClass('active');
        $('ul', this).stop().slideDown(100);
        $(this).one("click", handler2);
    }

    function handler2() {
        $(this).removeClass('active');
        $('ul', this).stop().slideUp(100);
        $(this).one("click", handler1);
    }
    $(".dash-nav li").one("click", handler1);
});