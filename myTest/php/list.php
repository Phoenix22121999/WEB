<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>

    <style>
    body {
        padding-top: 50px;
    }

    table {

        text-align: center;
    }

    td {
        padding: 10px;
    }

    tr.item {
        border-top: 1px solid #5e5e5e;
        border-bottom: 1px solid #5e5e5e;
    }

    tr.item:hover {
        background-color: #d9edf7;
    }

    tr.item td {
        min-width: 150px;
    }

    tr.header {
        font-weight: bold;
    }

    a {
        text-decoration: none;
    }

    a:hover {
        color: deeppink;
        font-weight: bold;
    }

    .des {
        width: 100%;
        height: 100px;
        margin: 0;
        padding: 0;
        overflow-y: scroll
    }
    </style>


    <script>
    $(document).ready(function() {


        $(".delete").click(function() {

            $('#myModal').modal({
                backdrop: 'static',
                keyboard: false
            });

        });
        $('.edit').click(function() {
            let id = $(this).data('id');
            setCookie('edit_id', id, 1)
            window.location.href = "../html/inputData.html";
        });

        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toUTCString();
            document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
        }
        $("#add").click(function() {
            setCookie('edit_id', "", 1)
        });

    });
    </script>


    <table cellpadding="10" cellspacing="10" border="0" style="border-collapse: collapse; margin: auto">

        <tr class="control" style="text-align: left; font-weight: bold; font-size: 20px">
            <td colspan="4">
                <a href="../html/inputData.html" id="add">Thêm phim</a>
            </td>
            <td colspan="1">
                <a href="logout.php">Logout</a>
            </td>
        </tr>
        <tr class="header">
            <td>ID</td>
            <td>Title</td>
            <td>Runtime</td>
            <td>Rating</td>
            <td>Link</td>
        </tr>
        <?php
        require('conn.php');
        $sql = "SELECT * FROM movies";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            // output data of each row
            while ($row = $result->fetch_assoc()) {
        ?>
        <tr class="item">
            <td> <?= $row['movie_id'] ?></td>
            <td><?= $row['title'] ?></td>
            <td><?= $row['runtime'] ?></td>
            <td><?= $row['rating'] ?></td>
            <td><?= $row['link'] ?></td>
            <td> <a class="edit" data-id="<?= $row['movie_id'] ?>">Edit</a></td>
        </tr>
        <?php     }
        }
        ?>
        <tr class="control" style="text-align: right; font-weight: bold; font-size: 17px">
            <td colspan="5">
                <p>Số lượng sản phẩm: <?= $result->num_rows ?></p>
            </td>
        </tr>
    </table>


    <!-- Delete Confirm Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>
                <div class="modal-body">
                    <p>Some text in the modal.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-danger">Delete</button>
                </div>

            </div>

        </div>
    </div>


</body>

</html>