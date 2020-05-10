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

$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
  $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
  if($check !== false) {
    echo "File is an image - " . $check["mime"] . ".";
    $uploadOk = 1;
  } else {
    echo "File is not an image.";
    $uploadOk = 0;
  }
}
