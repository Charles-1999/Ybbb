$(function () {
    starsImg = $('.left .stars img');
    starsText = $('.left .text');
    starsWidth = starsImg.width();
    starWid = starsWidth / 5;
    isComfirmStar = false;
    starsImg.click(function (e) {
        isComfirmStar = true;
        if (e.offsetX > starWid * 4) {
            starsImg.prop('src', 'images/stars/star5.png')
            starsText.text('力荐')
        } else if (e.offsetX > starWid * 3) {
            starsImg.prop('src', 'images/stars/star4.png')
            starsText.text('推荐')
        } else if (e.offsetX > starWid * 2) {
            starsImg.prop('src', 'images/stars/star3.png')
            starsText.text('还行')
        } else if (e.offsetX > starWid * 1) {
            starsImg.prop('src', 'images/stars/star2.png')
            starsText.text('较差')
        } else {
            starsImg.prop('src', 'images/stars/star1.png')
            starsText.text('很差')
        }
    })
    starsImg.mousemove(function (e) {
        if (!isComfirmStar) {
            if (e.offsetX > starWid * 4) {
                starsImg.prop('src', 'images/stars/star5.png')
                starsText.text('力荐')
            } else if (e.offsetX > starWid * 3) {
                starsImg.prop('src', 'images/stars/star4.png')
                starsText.text('推荐')
            } else if (e.offsetX > starWid * 2) {
                starsImg.prop('src', 'images/stars/star3.png')
                starsText.text('还行')
            } else if (e.offsetX > starWid * 1) {
                starsImg.prop('src', 'images/stars/star2.png')
                starsText.text('较差')
            } else {
                starsImg.prop('src', 'images/stars/star1.png')
                starsText.text('很差')
            }
        }
    })
    starsImg.mouseleave(function (e) {
        if (!isComfirmStar) {
            starsImg.prop('src', 'images/stars/star0.png')
            starsText.text('')
        }
    })

    $(".right .btn").click(function () {
        $("body,html").stop().animate({
            scrollTop: $(document).height()
        })
    })
})