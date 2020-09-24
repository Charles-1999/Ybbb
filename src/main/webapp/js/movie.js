$(function () {
    $('.cate-warp span').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        getMovieList($(this).text());
    })
})

function getMovieList(query) {
    const newQuery = "%25" + query + "%25";
    const tag = "热门/最新/正在上映/即将上映/高分";
    let url = '';
    if (tag.includes(query)) {
        url = "movieList?form=电影&tag=" + newQuery;
    } else {
        url = "movieList?form=电影&type=" + newQuery;
    }
    $.ajax({
        url: url,
        success: function (msg) {
            $(".item-warp").empty().append(msg);
        }
    })
}