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
    $birthday   = $_POST['birthday'];
    $email      = $_POST['email'];
    $message    = $_POST['message'];
    $file       = $_POST['file'];

    $sqlpelamar = "INSERT INTO pelamar(nama, nomerhp, email, message, dataCV)
            VALUES('$fullname','$phone', '$email', '$message', '$file')";
    $sql = "INSERT INTO pelamar(nama, nomerhp, email, message, dataCV)
            VALUES('$fullname','$phone', '$email', '$message', '$file');";
    $sql .= "SELECT * FROM `pelamar` WHERE nama = '$fullname' AND nomerhp = '$phone' ";
    // $getidpelamar = mysqli_fetch_array($sqlgetidpelamar);

    // while ($row = $result->fetch_all()) {
    //     echo "id: " . $row["id"] . "<br>";
    // }

    // insert pelamar

    if (mysqli_query($connection, $sqlpelamar)) {
        // output data of each row

        // header('Location:index.php');
        $sqlgetidpelamar = "SELECT id FROM `pelamar` WHERE nama = '$fullname' AND nomerhp = '$phone' ";
        // echo var_dump($row);
        echo "test";
        if ($result = mysqli_query($connection, $sqlgetidpelamar)) {
            # code...
            if (mysqli_num_rows($result) > 0) {
                # code...
                echo "ada isi";
                while ($row = mysqli_fetch_array($result)) {
                    echo "<br>" . $row['id'] . "</br>";
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



// $temp->pelamar = null;





// while ($getidpelamar = mysqli_fetch_array($sqlgetidpelamar)) {

//     // jika berhasil, redirect ke index.php
//     // echo var_dump($getidpelamar);
//     echo "di dlalm while";
//     echo var_dump($getidpelamar);
//     // echo var_dump($fullname);
//     // header('Location:index.php');
//     $temp->pelamar = $getidpelamar['id'];
//     $sqldaftar = "INSERT INTO daftar(idPelamar, idPosisi)
//             VALUES($temp->pelamar, $posisi)";
//     if (mysqli_query($connection, $sqldaftar)) {
//         echo var_dump($sqldaftar) . '<br>';
//         echo var_dump($temp->pelamar);
//         echo "berhasil";
//         # code...
//     } else {
//         // jika tidak, tampilkan pesan gagal menyimpan
//         echo "Ouppsss..., maap proses menyimpan data tidak berhasil";
//         echo var_dump($sqldaftar);
//     }
// }
// echo var_dump($temp->pelamar);

// Close connection
mysqli_close($connection);
