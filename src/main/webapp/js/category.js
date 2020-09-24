$(function () {
    let query = ['%25%25', '%25%25', '%25%25'];
    $('.cate-warp span').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
    })

    $('#form span').click(function () {
        if ($(this).text().includes("全部")) {
            query[0] = "%25%25";
        } else {
            query[0] = "%25" + $(this).text() + "%25";
        }
        getMovieList(query);
    })
    $('#type span').click(function () {
        if ($(this).text().includes("全部")) {
            query[1] = "%25%25";
        } else {
            query[1] = "%25" + $(this).text() + "%25";
        }
        getMovieList(query);
    })
    $('#region span').click(function () {
        if ($(this).text().includes("全部")) {
            query[2] = "%25%25";
        } else {
            query[2] = "%25" + $(this).text() + "%25";
        }
        getMovieList(query);
    })

    $('.tags div').click(function () {
        $(this).addClass('active').siblings().removeClass('active');
    })
})

function getMovieList(query) {
    let url = `movieListAll?form=${query[0]}&type=${query[1]}&region=${query[2]}`;
    console.log(url);
    $.ajax({
        url: url,
        success: function (msg) {
            $(".item-warp").empty().append(msg);
        }
    })
}