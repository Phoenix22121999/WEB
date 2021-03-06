$(document).ready(function () {
    $.ajax({
        type: "Post",
        url: "../php/loadPage.php",
        success: function (response) {
            var obj = JSON.parse(response);
            console.log(obj);
            for (let i = 1; i <= Object.keys(obj.HanhDong).length; i++) {
                var tmp_str = "movie_" + i;

                var tmp_link = "../" + obj.HanhDong[tmp_str].link;
                //var tmp_id_poster = '#action_' + i
                // tmp_id_title = '#title_' + i
                $(".film_hanhDong div:nth-child(" + (i + 1) + ") a img").attr({
                    src: "../" + obj.HanhDong[tmp_str].link,
                    "data-id": obj.HanhDong[tmp_str].id,
                    "data-genre": obj.HanhDong[tmp_str].genre,
                });
                $(".film_hanhDong div:nth-child(" + (i + 1) + ") p").html(
                    obj.HanhDong[tmp_str].title
                );
                $(".film_hanhDong div:nth-child(" + (i + 1) + ") p").data(
                    "id",
                    obj.HanhDong[tmp_str].id
                );
            }
            for (let i = 1; i <= Object.keys(obj.KinhDi).length; i++) {
                var tmp_str = "movie_" + i;
                //var tmp_id_poster = '#action_' + i
                //var tmp_id_title = '#title_' + i
                console.log(obj.KinhDi[tmp_str].genre);
                $(".film_KinhDi div:nth-child(" + (i + 1) + ") a img").attr({
                    src: "../" + obj.KinhDi[tmp_str].link,
                    "data-id": obj.KinhDi[tmp_str].id,
                    "data-genre": obj.KinhDi[tmp_str].genre,
                });
                $(".film_KinhDi div:nth-child(" + (i + 1) + ") p").html(
                    obj.KinhDi[tmp_str].title
                );
            }
            for (let i = 1; i <= Object.keys(obj.VoThuat).length; i++) {
                var tmp_str = "movie_" + i;
                console.log(obj.VoThuat[tmp_str]);
                //var tmp_id_poster = '#action_' + i
                //var tmp_id_title = '#title_' + i
                console.log(obj.VoThuat[tmp_str].genre);
                $(".film_voThuat div:nth-child(" + (i + 1) + ") a img").attr({
                    src: "../" + obj.VoThuat[tmp_str].link,
                    "data-id": obj.VoThuat[tmp_str].id,
                    "data-genre": obj.VoThuat[tmp_str].genre,
                });
                $(".film_voThuat div:nth-child(" + (i + 1) + ") p").html(
                    obj.VoThuat[tmp_str].title
                );
            }
            for (let i = 1; i <= Object.keys(obj.ThanThoai).length; i++) {
                var tmp_str = "movie_" + i;
                console.log(obj.ThanThoai[tmp_str]);
                //var tmp_id_poster = '#action_' + i
                //var tmp_id_title = '#title_' + i
                console.log(obj.ThanThoai[tmp_str].genre);
                $(".film_thanThoai div:nth-child(" + (i + 1) + ") a img").attr({
                    src: "../" + obj.ThanThoai[tmp_str].link,
                    "data-id": obj.ThanThoai[tmp_str].id,
                    "data-genre": obj.ThanThoai[tmp_str].genre,
                });
                $(".film_thanThoai div:nth-child(" + (i + 1) + ") p").html(
                    obj.ThanThoai[tmp_str].title
                );
            }
        },
    });

    $.ajax({
        type: "Post",
        url: "../php/loadPage12.php",
        success: function (response) {
            var obj = JSON.parse(response);
            console.log(obj);
            let count = 0;
            for (let i = 1; i <= 3; i++) {
                for (let z = 1; z <= 4; z++) {
                    count++;
                    if (count <= Object.keys(obj).length) {
                        var tmp_str = "movie_" + count;
                        $(
                            ".carousel-inner .carousel-item:nth-child(" +
                                i +
                                ") .img:nth-child(" +
                                z +
                                ") img "
                        ).attr({
                            src: "../" + obj[tmp_str].link,
                            "data-id": obj[tmp_str].id,
                            "data-genre": obj[tmp_str].genre,
                        });
                    }
                }
            }
        },
    });

    $(".HanhDongMovie").click(function () {
        localStorage.setItem("genre_id", 1);
        window.location.href = "../html/form_film.html";
    });
    $(".KinhDiMovie").click(function () {
        localStorage.setItem("genre_id", 2);
        window.location.href = "../html/form_film.html";
    });
    $(".VoThuatMovie").click(function () {
        localStorage.setItem("genre_id", 3);
        window.location.href = "../html/form_film.html";
    });
    $(".ThanThoaiMovie").click(function () {
        localStorage.setItem("genre_id", 4);
        window.location.href = "../html/form_film.html";
    });
    $(".poster").click(function () {
        let id = $(this).data("id");
        let genre = $(this).data("genre");
        localStorage.setItem("genre_id", genre);
        setCookie("id", id);
        window.location.href = "./Template.html";
    });
    $(".poster_sub").click(function () {
        let id = $(this).data("id");
        let genre = $(this).data("genre");
        localStorage.setItem("genre_id", genre);
        setCookie("id", id);
        window.location.replace("./Template.html");
    });

    $(".btn-search").click(function () {
        console.log($("#search-box").val());
        localStorage.setItem("search", $("#search-box").val());
        window.location.replace("./form_film.html");
    });

    function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000);
        var expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }
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
    function checkCookie() {
        var user = getCookie("username");
        if (user != "") {
            alert("Welcome again " + user);
        } else {
            user = prompt("Please enter your name:", "");
            if (user != "" && user != null) {
                setCookie("username", user, 365);
            }
        }
    }

    if (getCookie("isLogin") == 1) {
        $("#btn_logout").css("display", "block");
        $("#btn_login").css("display", "none");
        $("#name_user").css("display", "block");
        $("#name_user").html(getCookie("username"));
    }
    if (getCookie("isLogin") == 0) {
        $("#btn_logout").css("display", "none");
        $("#btn_login").css("display", "block");
        $("#name_user").css("display", "none");
    }
    if (getCookie("role") == 1) {
        $("#btn_admin").css("display", "block");
    }
    $("#btn_logout").click(function () {
        $("#btn_logout").css("display", "none");
        $("#btn_login").css("display", "block");
        $("#btn_admin").css("display", "none");
        $("#name_user").css("display", "none");

        $.ajax({
            type: "post",
            url: "../php/logout.php",
            success: function (response) {},
        });
    });

    $(".name_user").on("click", function () {
        document.getElementById("screen_2").style.display = "block";
        $("#id_user").val(getCookie("user_id"));
        $("#email").val(decodeURIComponent(getCookie("email")));
        $("#text").val(getCookie("username"));
    });
    $("#save_button").on("click", function () {
        if (
            $("#email").val() != decodeURIComponent(getCookie("email")) ||
            $("#text").val() != getCookie("username") ||
            $("#pwd_new").val() != ""
        ) {
            $.ajax({
                type: "post",
                url: "../php/update.php",
                data: {
                    user_id: getCookie("user_id"),
                    email: $("#email").val(),
                    username: $("#text").val(),
                    pwd_new: $("#pwd_new").val(),
                },
                success: function (response) {
                    alert(response);
                },
            });
        }
    });
});
