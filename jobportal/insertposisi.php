<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
require('connection.php');
// Check connection
if ($connection === false) {
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Escape user inputs for security
$fullname    = $_POST['fullname'];
$deskripsi   = $_POST['deskripsi'];
$sql = "INSERT INTO posisi(namaJabatan, Deskripsi)
            VALUES('$fullname','$deskripsi')";
if (mysqli_query($connection, $sql)) {
    // jika berhasil, redirect ke index.php
    echo var_dump($sql);
    echo var_dump($fullname);
    header('Location:index.php');
} else {
    // jika tidak, tampilkan pesan gagal menyimpan
    echo "Ouppsss..., maap proses menyimpan data tidak berhasil";
}

// Close connection
mysqli_close($connection);
