$(function () {
    $(".btn_search").click(function () {
        let query = $(".searchBar input").val();
        query = "%25" + query + "%25";
        location.href = "search?query=" + query;
    })
})