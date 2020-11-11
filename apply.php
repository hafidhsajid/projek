<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
require('connection.php');
// Check connection
if ($connection === false) {
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Escape user inputs for security


if (isset($_POST)) {
    # code...
    $posisi     = $_POST['posisi'];
    $fullname   = $_POST['full_name'];
    $phone      = $_POST['phone'];
    $email      = $_POST['email'];
    $message    = $_POST['message'];
    $file       = $_FILES['berkas']['name'];

    $sqlpelamar = "INSERT INTO pelamar(nama, nomerhp, email, message, dataCV)
            VALUES('$fullname','$phone', '$email', '$message', '$file')";
    $sql = "INSERT INTO pelamar(nama, nomerhp, email, message, dataCV)
            VALUES('$fullname','$phone', '$email', '$message', '$file');";
    $sql .= "SELECT * FROM `pelamar` WHERE nama = '$fullname' AND nomerhp = '$phone' ";


    // move file
    $file_name = $_FILES['berkas']['name'];
    $file_size = $_FILES['berkas']['size'];
    $file_tmp = $_FILES['berkas']['tmp_name'];
    $file_type = $_FILES['berkas']['type'];
    $file_ext = strtolower(end(explode('.', $_FILES['berkas']['name'])));

    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["berkas"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    // Check if image file is a actual image or fake image
    echo "<pre>";
    print_r($_FILES);
    echo "</pre>";
    if (isset($_POST["submit"]) && isset($_FILES['berkas'])) {
        $file_temp = $_FILES['berkas']['tmp_name'];
        move_uploaded_file($file_tmp, "uploads/" . $file_name);
        $info = getimagesize($_FILES['berkas']);
        echo var_dump($file_temp);
    } elseif (isset($_POST["submit"]) && !isset($_FILES['berkas'])) {
        print "Form was submitted but file wasn't send";
        exit;
    } else {
        print "Form wasn't submitted!";
        exit;
    }

    if (mysqli_query($connection, $sqlpelamar)) {
        // output data of each row

        // header('Location:index.php');
        $sqlgetidpelamar = "SELECT id FROM `pelamar` WHERE nama = '$fullname' AND nomerhp = '$phone' ";
        // echo var_dump($row);
        if ($result = mysqli_query($connection, $sqlgetidpelamar)) {
            # code...
            if (mysqli_num_rows($result) > 0) {
                # code...
                while ($row = mysqli_fetch_array($result)) {
                    echo "<br>";
                    $tmp = $row['id'];
                    $sqldaftar = "INSERT INTO daftar(idPelamar, idPosisi) VALUES($tmp, $posisi)";
                    if ($hasil = mysqli_query($connection, $sqldaftar)) {
                        echo "berhasil insert dafatar";

                        header('Location:index.php');
                    } else {
                        echo "gagal insert daftar";
                    }
                }
            } else {
                echo "kosong";
            }
            echo var_dump($result);
        }
    } else {
        // jika tidak, tampilkan pesan gagal menyimpan
        echo "Ouppsss..., maap proses menyimpan data tidak berhasil";
        echo var_dump($sql);
    }

    // get id pelamar

}



mysqli_close($connection);
