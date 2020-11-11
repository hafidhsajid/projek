
<?php

// The location of the PDF file 
// on the server 
$dir = "uploads/";
$filename = $_POST['cv'];
$pdf = $dir . $filename;

// Header content type 
header("Content-type: application/pdf");

header("Content-Length: " . filesize($pdf));

// Send the file to the browser. 
readfile($pdf);
?>  
  