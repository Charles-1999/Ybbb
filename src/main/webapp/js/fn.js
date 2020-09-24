export function getMovieList(query) {
    const newQuery = "%25" + query + "%25";
    const tag = "热门/最新/正在上映/即将上映/高分";
    let url = '';
    if (tag.includes(query)) {
        url = "movieList?tag=" + newQuery;
    } else {
        url = "movieList?type=" + newQuery;
    }
    $.ajax({
        url: url,
        success: function (msg) {
            $(".item-warp").empty().append(msg);
        }
    })
}