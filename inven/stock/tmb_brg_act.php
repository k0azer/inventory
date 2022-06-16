<?php 
include '../dbconnect.php';
date_default_timezone_set('Asia/Jakarta');
$kode=$_POST['kode'];
$nama=$_POST['nama'];
$harga=$_POST['harga'];
$diskon=$_POST['diskon'];
$stock=$_POST['stock'];
$type=$_POST['type'];
$subtype=$_POST['subtype'];
$merk=$_POST['merk'];
$keterangan=$_POST['keterangan'];
$tanggal = date('Y-m-d H:i:s');

	  
$query = mysqli_query($conn,"insert into sstock_brg values('','$kode','$nama','$harga','$diskon','$stock','$type','$subtype','$merk','$keterangan','$tanggal')");
if ($query){

echo " <div class='alert alert-success'>
    <strong>Success!</strong> Redirecting you back in 1 seconds.
  </div>
<meta http-equiv='refresh' content='1; url= index.php'/>  ";
} else { echo "<div class='alert alert-warning'>
    <strong>Failed!</strong> Redirecting you back in 1 seconds.
  </div>
 <meta http-equiv='refresh' content='1; url= index.php'/> ";
}
 
?>
 
  <html>
<head>
  <title>Tambah Barang</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>