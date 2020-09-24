$(function () {
    let query = '';
    $(".warp-right a").click(function () {
        $(this).addClass('active').siblings().removeClass('active');
        if ($(this).text().includes("全部")) {
            query = "%25%25";
        } else {
            query = "%25" + $(this).text() + "%25";
        }
        getRankList(query);
    })
})

function getRankList(query) {
    let url = `mbRankList?type=${query}`;
    console.log(url);
    $.ajax({
        url: url,
        success: function (msg) {
            $(".movie-list").empty().append(msg);
        }
    })
}