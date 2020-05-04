<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
require('connection.php');
// Check connection
if ($connection === false) {
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Escape user inputs for security
$fullname = mysqli_real_escape_string($link, $_POST['fullname']);
$deskripsi = mysqli_real_escape_string($link, $_REQUEST['Deskripsi']);
// $fullname    = $_POST['namaJabatan'];
// $deskripsi   = $_POST['Deskripsi'];
$sql = "INSERT INTO posisi(namaJabatan, Deskripsi)
            VALUES('$fullname','$deskripsi')";
if (mysqli_query($connection, $sql)) {
    // jika berhasil, redirect ke index.php
    // header('Location:index.php');
    echo var_dump($fullname);
} else {
    // jika tidak, tampilkan pesan gagal menyimpan
    echo "Ouppsss..., maap proses menyimpan data tidak berhasil";
}

// Close connection
mysqli_close($connection);
