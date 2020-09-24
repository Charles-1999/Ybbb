$(function () {
    let query = ['%25%25', '%25%25', '%25%25'];
    $('.warp-right a').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
    })

    $('#form a').click(function () {
        if ($(this).text().includes("全部")) {
            query[0] = "%25%25";
        } else {
            query[0] = "%25" + $(this).text() + "%25";
        }
        getMovieList(query);
    })
    $('#type a').click(function () {
        if ($(this).text().includes("全部")) {
            query[1] = "%25%25";
        } else {
            query[1] = "%25" + $(this).text() + "%25";
        }
        getMovieList(query);
    })
    $('#region a').click(function () {
        if ($(this).text().includes("全部")) {
            query[2] = "%25%25";
        } else {
            query[2] = "%25" + $(this).text() + "%25";
        }
        getMovieList(query);
    })
})

function getMovieList(query) {
    let url = `mbSelectMovie?form=${query[0]}&type=${query[1]}&region=${query[2]}`;
    console.log(url);
    $.ajax({
        url: url,
        success: function (msg) {
            $(".movie-list").empty().append(msg);
        }
    })
}