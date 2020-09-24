$(function () {
    $(".editpwd").click(function () {
        $(this).siblings(".pwd-alert").fadeIn();
    })
    $(".alert-btn .cel").click(function () {
        $(this).parents(".pwd-alert").fadeOut();
    })

    // 搜索功能
    $(function () {
        $(".btn_search").click(function () {
            let query = $(".searchBar input").val();
            query = "%25" + query + "%25";
            $.ajax({
                url: "searchUser?query=" + query,
                success: function (msg) {
                    $(".userList").empty().append(msg);
                }
            })
        })
    })
})
var oldOper;
var oldNameHTML;
var oldEmailHTML;
var oldName;
var oldEmail;
var operation;
var user;
function edit(ele) {
    operation = ele.parentNode;
    user = ele.parentNode.parentNode;
    oldOper = operation.innerHTML;
    oldNameHTML = user.children[2].innerHTML;
    oldEmailHTML = user.children[3].innerHTML;
    oldName = user.children[2].innerText;
    oldEmail = user.children[3].innerText;
    const name = `<input value="${oldName}"/>`
    const email = `<input value="${oldEmail}"/>`
    const newOper = `<a class="cel" href="javascript:;" onclick="cel()">取消</a>
        <a class="ok" href="javascript:;" onclick="editOK()">完成</a>`
    user.children[2].innerHTML = name;
    user.children[3].innerHTML = email;
    operation.innerHTML = newOper;
}

function editOK() {
    const id = user.children[1].innerText;
    const name = user.children[2].children[0].value;
    const email = user.children[3].children[0].value;
    location.href = `editUser?id=${id}&name=${name}&email=${email}`;
}

function cel() {
    user.children[2].innerHTML = oldNameHTML;
    user.children[3].innerHTML = oldEmailHTML;
    operation.innerHTML = oldOper;
}

function editpwd($this, id) {
    const pwd = $($this).parents('.pwd-alert').find('.pwd input').val();
    location.href = `editpwd?id=${id}&pwd=${pwd}`;
}