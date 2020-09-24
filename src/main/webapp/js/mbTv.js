$(function () {
    $('.warp-right a').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        getMovieList($(this).text());
    })
})

function getMovieList(query) {
    const newQuery = "%25" + query + "%25";
    const tag = "热门/最新/正在上映/即将上映/高分";
    let url = '';
    if (tag.includes(query)) {
        url = "mbMovieList?form=电视剧&tag=" + newQuery;
    } else {
        url = "mbMovieList?form=电视剧&type=" + newQuery;
    }
    $.ajax({
        url: url,
        success: function (msg) {
            $(".movie-list").empty().append(msg);
        }
    })
}