$(function () {
    $('.sub-title li').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
    })
})