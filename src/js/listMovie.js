$(document).ready(function () {
    // console.log(localStorage.getItem("search") === null);
    // alert(localStorage.getItem("search") == "null");

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

    function setCookie(cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + exdays * 24 * 60 * 60 * 1000);
        var expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
    }
    if (
        localStorage.getItem("search") == "null" ||
        localStorage.getItem("search") == "" ||
        localStorage.getItem("search") == "undefined"
    ) {
        console.log(localStorage.getItem("genre_id"));
        $.ajax({
            type: "post",
            url: "../php/loadPage20.php",
            data: {
                genre: localStorage.getItem("genre_id"),
            },
            success: function (response) {
                var obj = JSON.parse(response);
                console.log(obj);
                var l = Object.keys(obj).length;
                if (localStorage.getItem("genre_id") == 1) {
                    var genre = "HanhDong";
                } else if (localStorage.getItem("genre_id") == 2) {
                    var genre = "KinhDi";
                } else if (localStorage.getItem("genre_id") == 3) {
                    var genre = "VoThuat";
                } else if (localStorage.getItem("genre_id") == 4) {
                    var genre = "ThanThoai";
                }
                console.log();
                for (let i = 1; i <= l; i++) {
                    var tmp_str = "movie_" + i;
                    var tmp_link =
                        "../picture/poster/" + genre + "/" + obj[tmp_str].link;
                    var a = $("<a>", {
                        href: "#",
                    });
                    $("<img>", {
                        class: "poster",
                        attr: {
                            src: tmp_link,
                            "data-id": obj[tmp_str].id,
                            "data-genre": obj[tmp_str].genre,
                        },
                    }).appendTo(a);
                    var p = $("<p>", {
                        class: "title",
                        text: obj[tmp_str].title,
                    });
                    var div = $("<div>", {
                        class: "movie",
                    });
                    $(a).appendTo(div);
                    $(p).appendTo(div);
                    $(div).appendTo(".body_web");
                }
                $(".poster").each(function (index, element) {
                    // element == this
                    $(element).click(function () {
                        console.log("poster");
                        let id = $(this).data("id");
                        let genre = $(this).data("genre");
                        localStorage.setItem("genre_id", genre);
                        setCookie("id", id);
                        window.location.href = "./Template.html";
                    });
                });
            },
        });
    } else {
        $.ajax({
            type: "post",
            url: "../php/search.php",
            data: {
                search: localStorage.getItem("search"),
            },
            success: function (response) {
                var obj = JSON.parse(response);

                if (Object.keys(obj).length > 0) {
                    console.log(obj);
                    var l = Object.keys(obj).length;

                    for (let i = 1; i <= l; i++) {
                        var tmp_str = "movie_" + i;

                        if (obj[tmp_str].genre == 1) {
                            var genre = "HanhDong";
                        } else if (obj[tmp_str].genre == 2) {
                            var genre = "KinhDi";
                        } else if (obj[tmp_str].genre == 3) {
                            var genre = "VoThuat";
                        } else if (obj[tmp_str].genre == 4) {
                            var genre = "ThanThoai";
                        }
                        var tmp_link =
                            "../picture/poster/" +
                            genre +
                            "/" +
                            obj[tmp_str].link;
                        var a = $("<a>", {
                            href: "#",
                        });
                        $("<img>", {
                            class: "poster",
                            attr: {
                                src: tmp_link,
                                "data-id": obj[tmp_str].id,
                                "data-genre": obj[tmp_str].genre,
                            },
                        }).appendTo(a);
                        var p = $("<p>", {
                            class: "title",
                            text: obj[tmp_str].title,
                        });
                        var div = $("<div>", {
                            class: "movie",
                        });
                        $(a).appendTo(div);
                        $(p).appendTo(div);
                        $(div).appendTo(".body_web");
                    }
                    $(".poster").each(function (index, element) {
                        // element == this
                        console.log(element);
                        $(element).click(function () {
                            console.log("poster");
                            let id = $(this).data("id");
                            let genre = $(this).data("genre");
                            localStorage.setItem("genre_id", genre);
                            setCookie("id", id);
                            window.location.href = "./Template.html";
                        });
                    });
                } else {
                    var p = $("<p>", {
                        class: "title",
                        text: "Không Có Phim Trùng Với Tên Được Tìm Kiếm",
                        css: {
                            color: "white",
                        },
                    });

                    $(p).appendTo(".body_web");
                }
            },
        });
        // sleep time expects milliseconds
        function sleep(time) {
            return new Promise((resolve) => setTimeout(resolve, time));
        }

        // Usage!
        sleep(1500).then(() => {
            // Do something after the sleep!
            localStorage.setItem("search", null);
        });
    }
    $(".poster").click(function () {
        console.log("poster");
        let id = $(this).data("id");
        let genre = $(this).data("genre");
        localStorage.setItem("genre_id", genre);
        setCookie("id", id);
        window.location.href = "./Template.html";
    });

    /*var a = $('<a>',{
        href:"#"
        })
        $('<img>',{
            'class': 'poster',
            attr:{
                src:"./picture/poster/HanhDong/1.jpg"           
            },
            css:{
                'width': '100px',
                'height': '200px'
            }
        }).appendTo(a)
        var p = $('<p>',{
            'class': 'title',
            text: "title"
        })
        var div = $('<div>')
        $(a).appendTo(div);
        $(p).appendTo(div);
        $(div).appendTo(".body_web");
        console.log("dat")*/
    $(".btn-search").click(function () {
        console.log($(".search-box").val());
        localStorage.setItem("search", $(".search-box").val());

        window.location.replace("./form_film.html");
    });
});
