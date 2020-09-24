$(function () {
    $(".upload-btn").click(function () {
        location.href = "uploadMovie"
    })

    let query = ['%25%25', '%25%25', '%25%25'];
    $(".selector select").change(function () {
        const index = $(this).parent().index();
        const val = $(this).val();
        query[index] = val;
        console.log(query)
        let url = `selectMovie?form=${query[0]}&type=${query[1]}&region=${query[2]}`;
        $.ajax({
            url: url,
            success: function (msg) {
                $(".movieList").empty().append(msg);
            }
        })
    })

    // 搜索功能
    $(function () {
        $(".btn_search").click(function () {
            let query = $(".searchBar input").val();
            query = "%25" + query + "%25";
            $.ajax({
                url: "searchMovie?query=" + query,
                success: function (msg) {
                    $(".movieList").empty().append(msg);
                }
            })
        })
    })
})

function showAlert($this) {
    // 删除确认框 弹出显示
    $($this).siblings(".del-alert").fadeIn();
}

function celAlert($this) {
    // 取消删除
    $($this).parents(".del-alert").fadeOut()
}

function edit(id) {
    location.href = 'editMovie?id=' + id
}

function del(id) {
    location.href = 'delMovie?id=' + id
}