$(document).ready(function () {
    $('.counter').counterUp({
        delay: 5,
        time: 3000
    });

    $(".countdown")
        .countdown("2020/10/10", function (event) {
            $(this).html(
                event.strftime('<div>%D <span>Days</span></div>  <div>%H<span>Hours</span></div> <div>%M<span>Minutes</span></div>')
            );
        });
});