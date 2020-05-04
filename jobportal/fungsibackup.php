<?php
$stat = $dbh->prepare("select * from posisi");
$stat->execute();
?>

<?php
include_once("connection.php");
print "cek";
$stat = $dbh->prepare("select * from posisi");
$stat->execute();
while ($row = $stat->fetch()) {
    # code...
    print "<li>" . $row['namaJabatan'] . "</li>";
} ?>
  <?php
    include_once("connection.php");
    $stat = $dbh->prepare("select * from posisi");
    $stat->execute();
    while ($row = $stat->fetch()) {
        # code...
        echo "<div>" . $row['namaJabatan'] . "</li>";
    } ?>
