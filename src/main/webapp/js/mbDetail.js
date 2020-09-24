$(function () {
    $(".warp-left .btn").click(function () {
        $("body,html").stop().animate({
            scrollTop: $(document).height()
        })
    })
})