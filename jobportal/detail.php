<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Apply for job</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>

    <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">Apply for job</h2>
                </div>
                <div class="card-body">
                    <?php
                    include('connection.php');
                    $detailid = $_POST['aksi'];
                    $querry = "select * from pelamar where id = '$detailid'";
                    $result = $connection->query($querry);
                    while ($row = $result->fetch_assoc()) {
                        print '<div class="form-row">
                        <div class="name">Full name</div>
                        <div class="value">' . $row["nama"] .
                            '</div></div>';
                        print '<div class="form-row">
                        <div class="name">Phone</div>
                        <div class="value">' . $row["nomerhp"] .
                            '</div></div>';
                        print '<div class="form-row">
                        <div class="name">Email</div>
                        <div class="value">' . $row["email"] .
                            '</div></div>';
                        print '<div class="form-row">
                        <div class="name">Message</div>
                        <div class="value">' . $row["message"] .
                            '</div></div>';
                        print '<div class="form-row">
                        <div class="name">Message</div>
                        <div class="value">' . $row["dataCV"] .
                            '</div></div>';

                        print '<div class="form-row mr-2">';
                        print '<form action="opencvpdf.php" method="post">
                        <input type="hidden" name="cv" value="' . $row['dataCV'] . '">
                        <a href="pelamar.php" class="btn btn--radius-2 btn--red btn--pad">Back</a>
                        <button type=" submit" class="btn btn--radius-2 btn--blue ">Open pdf</button>
                        
                        </form>
                        </div>
                        ';
                    }
                    ?>
                </div>
                <div class="card-footer">
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>


    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->