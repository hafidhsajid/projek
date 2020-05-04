<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    $dbh = new PDO("mysql:host=localhost;dbname=projek", "admin", "password");
    if (isset($_POST['btn'])) {
        # code...
        $name = $_FILES['myfile']['name'];
        $type = $_FILES['myfile']['type'];
        $data = file_get_contents($_FILES['myfile']['tmp_name']);
        $stmt = $dbh->prepare("insert into projek values('',?,?)");
        $stmt->bindParam(1, $name);
        $stmt->bindParam(2, $data);
        $stmt->execute();
    }
    ?>
    <form method="post" enctype="multipart/form-data">
        <input type="file" name="myfile" id="myfile" />
        <button name="btn">Upload</button>
    </form>
    <p></p>
    <ol>
        <?php
        while ($row = $stat->fetch()) {
            # code...
            echo "<li>" . $row['namaJabatan'] . "</li>";
        }
        ?>
    </ol>

</body>

</html>