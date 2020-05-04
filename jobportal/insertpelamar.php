<?php
require("connection.php");

$posisi     = $_POST['posisi'];
$fullname   = $_POST['full_name'];
$phone      = $_POST['phone'];
$birthday   = $_POST['birthday'];
$email      = $_POST['email'];
$message    = $_POST['message'];
$file       = $_POST['file'];
$sqlpelamar = "INSERT INTO pelamar(nama, nomerhp, email, message, dataCV)
            VALUES('$fullname','$phone', '$email', '$message', '$file')";
// $getidpelamar = mysqli_fetch_array($sqlgetidpelamar);
if (mysqli_query($connection, $sqlpelamar)) {

    header('Location:index.php');
} else {
    // jika tidak, tampilkan pesan gagal menyimpan
    echo "Ouppsss..., maap proses menyimpan data tidak berhasil";
    echo var_dump($sqlpelamar);
}
