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
    <?php
    include('connection.php');
    $posisi = $_POST['aksi'];
    $detailid = $_POST['aksi'];
    $querry = "select * from posisi where id = '$posisi'";
    $result = $connection->query($querry);
    $rowposisi = $result->fetch_assoc();



    $detailid = $_POST['aksi'];
    $querry = "select * from posisi where id = '$posisi'";
    $result = $connection->query($querry);

    ?>
    <div class="page-wrapper bg-dark p-t-100 p-b-50">
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">Apply for job <?php print $rowposisi['namaJabatan']; ?></h2>
                </div>
                <div class="card-body">
                    <form action="apply.php" method="POST" enctype="multipart/form-data">

                        <input type="hidden" name="posisi" value=" <?= $_POST['aksi'] ?>">
                        <div class="form-row">
                            <div class="name">Full name</div>
                            <div class="input">
                                <input class="input--style-6" type="text" name="full_name" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Phone number</div>
                            <div class="input">
                                <input class="input--style-6" type="number" id="phone" name="phone" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email address</div>
                            <div class="input">
                                <div class="input-group">
                                    <input class="input--style-6" type="email" name="email" placeholder="example@email.com" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Message</div>
                            <div class="input">
                                <div class="input-group">
                                    <textarea class="textarea--style-6" name="message" placeholder="Message sent to the employer"></textarea>
                                </div>
                            </div>

                        </div>
                        <div class="form-row">
                            <div class="name">Upload CV</div>
                            <div class="value">
                                <div class="input-group js-input-file">
                                    <input class="input-file" type="file" name="berkas" id="berkas">
                                    <label class="label--file" for="berkas">Choose file</label>
                                    <span class="input-file__info">No file chosen</span>
                                </div>
                                <div class="label--desc">Upload your CV/Resume or any other relevant file. Max file size 50 MB</div>
                            </div>

                            <a href="index.php" class="btn btn--radius-2 btn--red btn--pad">Back</a>
                            <button class="btn btn--radius-2 btn--blue-2" value="POST" name="submit" type="submit">Send Application</button>
                        </div>

                    </form>
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