$(function () {

})
var info;
var info_text;
var info_edit;
var oldEdit;
var oldText;
function edit(ele) {
    info = ele.parentNode.parentNode;
    info_text = info.children[1];
    info_edit = info.children[2];
    oldText = info_text.innerHTML;
    oldEdit = info_edit.innerHTML;
    let uname = info_text.innerText;
    const input = `<input value=${uname} />`;
    const edit = `<a href="javascript:;" id="edit-name-cel" onclick="cel()">取消</a>
            <span> | </span>
            <a href="javascript:;" id="edit-name-ok" onclick="ok(this)">完成</a>
            `;
    info_edit.innerHTML = edit;
    info_text.innerHTML = input;
}

function cel() {
    info_edit.innerHTML = oldEdit;
    info_text.innerHTML = oldText;
}

function ok(ele) {
    const name = info_text.children[0].value;
    window.location.href = '/ybbb/editNameOK?name=' + name;
}