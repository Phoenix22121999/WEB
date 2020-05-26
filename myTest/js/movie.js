$(document).ready(function () {
    //alert(getCookie('id'))
    $.ajax({
        type: "post",
        url: "../php/getLink.php",
        data: {
            id: getCookie("id"),
            genre: localStorage.getItem("genre_id"),
        },
        success: function (response) {
            var obj = JSON.parse(response);
            console.log(obj);
            $("iframe").attr("src", obj["main"].link);
            $(".text_main").html(obj["main"].description);
            if (localStorage.getItem("genre_id") == 1) {
                var genre = "HanhDong";
            } else if (localStorage.getItem("genre_id") == 2) {
                var genre = "KinhDi";
            } else if (localStorage.getItem("genre_id") == 3) {
                var genre = "VoThuat";
            } else if (localStorage.getItem("genre_id") == 4) {
                var genre = "ThanThoai";
            }
            console.log(genre);
            $(".poster .poster_img").attr(
                "src",
                "../picture/poster/" + genre + "/" + getCookie("id") + ".jpg"
            );
            for (let i = 1; i < Object.keys(obj).length; i++) {
                var tmp_str = "movie_" + i;
                var tmp_ptr = "#text_sub_" + i;
                var tmp_txt = ".poster_sub #poster_img_" + i;

                $(tmp_ptr).html(obj[tmp_str].description);
                $(tmp_txt).attr(
                    "src",
                    "../picture/poster/" +
                        genre +
                        "/" +
                        obj[tmp_str].id +
                        ".jpg"
                );
            }
        },
    });

    function getComment() {
        $.ajax({
            type: "post",
            url: "../php/getComment.php",
            data: {
                id: getCookie("id"),
            },
            success: function (response) {
                try {
                    var obj = JSON.parse(response);
                    for (let i = 1; i <= Object.keys(obj).length; i++) {
                        var name = $("<p>", {
                            class: "name",
                            text: obj[i].username,
                        });
                        var comment = $("<p>", {
                            class: "comment",
                            text: obj[i].comment,
                        });
                        var item = $("<div>", {
                            class: "commentItem",
                        });
                        $(name).appendTo(item);
                        $(comment).appendTo(item);
                        $(item).appendTo(".commentBox");
                    }
                } catch (error) {
                    var comment = $("<p>", {
                        text: "Chưa có người comment",
                    });
                    var item = $("<div>", {
                        class: "commentItem",
                    });
                    // $(name).appendTo(item);
                    $(comment).appendTo(item);
                    $(item).appendTo(".commentBox");
                }
            },
        });
    }
    getComment();

    function getCookie(cname) {
        var name = cname + "=";
        var ca = document.cookie.split(";");
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == " ") {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }

    $("#btn").click(function () {
        if (getCookie("isLogin") == 1 && $("#comment").val() != "") {
            $.ajax({
                type: "post",
                url: "../php/setComment.php",
                data: {
                    user_id: getCookie("user_id"),
                    comment: $("#comment").val(),
                    movie_id: getCookie("id"),
                },
                success: function (response) {
                    if (response == 1) {
                        getComment();
                        $("#comment").val(" ");
                    }
                },
            });
        } else {
            alert("Bạn phải đăng nhập để bình luận");
        }
    });

    $(".btn-search").click(function () {
        console.log($(".search-box").val());
        localStorage.setItem("search", $(".search-box").val());

        window.location.replace("./form_filmHanhDong.html");
    });
});
