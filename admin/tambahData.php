<?php 
    require 'functions.php';
    // cek submit sudah/belum
    if ( isset($_POST["submit"])){
        $hasil = ambil($_POST);
        if($hasil<1){
            $debug=true;
        }
        elseif ($hasil==9){
            $debruyne=true;
        }
        elseif ($hasil==8){
            $naldo=true;
        }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD</title>
</head>
<body>
    <?php if(isset($debug)) { ?>
    <h3 style="color: red; font-style:italic" ;>periksa kembali data anda!</h3>
    <?php } ?>
    <table border="0" cellspacing="0" cellpadding="3">
        <form action="" method="post" enctype="multipart/form-data">
    <ul>
        <tr>
            <td><label for="nama">Nama :</label></td>
            <td><input type="text" name="nama" id="nama" required></td>

        </tr>
        <tr>
            <td><label for="nim">Nim :</label></td>
            <td><input type="text" name="nim" id="nim" required></td>

        </tr>
        <tr>
            <td><label for="jurusan">Jurusan :</label></td>
            <td><input type="text" name="jurusan" id="jurusan" required></td>

        </tr>
        <tr>
            <td><label for="email">Email :</label></td>
            <td><input type="text" name="email" id="email" required></td>
        </li>
        </tr>
        <tr>
            <td><label for="semester">Semester :</label></td>
            <td><input type="text" name="semester" id="semester" required></td>

        </tr>
        <tr>

            <td><label for="gambar">Gambar :</label></td>
            <td><input type="file" name="Gambar" id="gambar" ></td>
            <?php if(isset($debruyne)) { ?>
            <h5 style="color: red; font-style:italic" ;>*pastikan file berformat (jpg/jpeg/png/webp)</h5>
            <?php } ?>
            <?php if(isset($naldo)) { ?>
            <h5 style="color: red; font-style:italic" ;>*ukuran maksimal gambar 1mb</h5>
            <?php } ?>

        </tr>
        <tr>
            <td align="left" colspan="2"><button type="submit" name="submit">Kirim</button></td>
        </tr>
    </ul>
        </form>
    </table>
</body>
</html>
