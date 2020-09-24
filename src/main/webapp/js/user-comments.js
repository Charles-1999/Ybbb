$(function () {
    // 删除确认框 弹出显示
    $(".comment-del").click(function () {
        $(this).siblings(".del-alert").fadeIn();
    })
    // 取消删除
    $(".del-alert .cel").click(function () {
        $(this).parents(".del-alert").fadeOut()
    })
    // // 确认删除
    // $(".del-alert .comfirm").click(function () {
    //     window.location.href = "/ybbb/commentDel?id="
    // })
})