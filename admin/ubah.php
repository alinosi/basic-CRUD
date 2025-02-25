<?php 
    require 'functions.php';
    $ubah=$_GET["id"];
    $mahasiswa = query("SELECT * FROM mahasiswa WHERE id=$ubah");
    $gambarLama = $mahasiswa[0]["Gambar"];
    // cek submit sudah/belum
    if ( isset($_POST["submit"])){
        $kn = rubah($_POST,$ubah,$gambarLama);
        if( $kn===true){
            $debug=true;
        }
        elseif ($kn===9){
            $debruyne=true;
        }
        elseif ($kn===8){
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
        <?php foreach($mahasiswa as $mhs) : ?>
        <tr>
            <td><label for="nama">Nama :</label></td>
            <td><input type="text" name="nama" id="nama" required value="<?= $mhs["nama"];?>"></td>

        </tr>
        <tr>
            <td><label for="nim">Nim :</label></td>
            <td><input type="text" name="nim" id="nim" required value="<?= $mhs["nim"] ?>"></td>

        </tr>
        <tr>
            <td><label for="jurusan">Jurusan :</label></td>
            <td><input type="text" name="jurusan" id="jurusan" required value="<?= $mhs["jurusan"] ?>"></td>

        </tr>
        <tr>
            <td><label for="email">Email :</label></td>
            <td><input type="text" name="email" id="email" required value="<?= $mhs["email"] ?>"></td>
        </li>
        </tr>
        <tr>
            <td><label for="semester">Semester :</label></td>
            <td><input type="text" name="semester" id="semester" required value="<?= $mhs["semester"] ?>"></td>

        </tr>
        <tr>

            <td><label for="gambar">Gambar :</label></td>
            <td><img src="img/<?= $mhs["Gambar"] ?>" alt=".jpg" width="100"></td>
        </tr>
        <tr>
            <td><td><input type="file" name="Gambar" id="gambar"></td></td>
            <?php if(isset($debruyne)) { ?>
            <h5 style="color: red; font-style:italic" ;>*pastikan file berformat (jpg/jpeg/png/webp)</h5>
            <?php } ?>
            <?php if(isset($naldo)) { ?>
            <h5 style="color: red; font-style:italic" ;>*ukuran maksimal gambar 1mb</h5>
            <?php } ?>
        </tr>
        <tr>
            <td align="right" colspan="2"><button type="submit" name="submit">Ubah</button></td>
        </tr>
        <?php endforeach; ?>
    </ul>
        </form>
    </table>
</body>
</html>
