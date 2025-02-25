<?php
    session_start();
    if(!isset($_SESSION['login'])){
        header('Location: ../page/pageLogin/login.php');
    }
    require 'functions.php';

    // buat pagination
    $jumlahDataPerhalaman = 2;
    // count digunakan untuk menghitung jumlah elemen pada array 
    $jumlahData = count(query('SELECT * FROM mahasiswa'));
    // Hitung jumlah halaman
    // fungsi round berarti desimal dibulatkan, floor selalu ke bawah, dan ceil selalu ke atas 
    $jumlahHalaman = ceil($jumlahData/$jumlahDataPerhalaman);
    // cari tau halaman berapa sekarang
    $page = isset($_GET['page']) ? $_GET['page'] : 1;

    // halaman 1 awal data 0,1
    // halaman 2 awal data 2,3
    // halaman 3 awal data 4,5
    // halaman 4 awal data 6,7
    // halaman 5 awal data 8,9
// (n*b)-n
// 2 data, ada 5 halaman berarti terdapat 10 data dan di halaman kelima berarti data ke 9 dan 10 yang mana data awal nya 9 dan akhirnya 10
// if n = indeks mulai maka (halaman saat ini * jumlah dataperhalaman) - selisih data awal ke data akhir
    // tentukan indeks mulai
    $indeksMulai = ($page * $jumlahDataPerhalaman)-$jumlahDataPerhalaman;
    
    // parameter limit (data mulai dari indeks keberapa, jumlah data yang ingin ditampilkan)
    $mahasiswa = query("SELECT * FROM mahasiswa LIMIT $indeksMulai,$jumlahDataPerhalaman"); 
    // tombol search ditekan
    if (isset($_POST["cari"])){
        $mahasiswa = cari($_POST["keyword"],$indeksMulai,$jumlahDataPerhalaman);
        if($mahasiswa==NULL){
            $empty=true;
        } 
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
</head>
<body>
    <?= var_dump($mahasiswa) ?>
    <h1>Daftar Mahasiswa</h1>
    <?php if($page<2) :?>
        <a href="?page=<?= $page; ?>">&laquo</a>
    <?php else : ?>
        <a href="?page=<?= $page-1; ?>">&laquo</a>
    <?php endif; ?>
    <?php for($i=1;$i<=$jumlahHalaman;$i++) : ?>
    <?php if($i==$page) : ?>
        <a href="?page=<?= $i; ?>" style="color: red;"><b><?= "202".$i; ?></b></a>
    <?php else : ?>
        <a href="?page=<?= $i; ?>"><?= "202".$i; ?></a>
    <?php endif; ?>
    <?php endfor; ?>
    <?php if($page>$jumlahHalaman-1) :?>
        <a href="?page=<?= $page; ?>">&raquo</a>
    <?php else : ?>
        <a href="?page=<?= $page+1; ?>">&raquo</a>
    <?php endif; ?>
    <br>
    <br>
    <form action="" method="post">
        <input type="text" name="keyword" size="40" autofocus placeholder="masukkan kata kunci...">
        <button type="submit" name="cari">Cari</button>
    </form>
    <br>
    <?php if(isset($empty)) : ?>
        <h1>Data Mahasiswa tidak ditemukan!</h1>
    <?php else : ?>
        <table border="1" cellspacing="0" cellpadding="10">
            <tr>
                <th>No.</th>
                <th>Aksi</th>
                <!-- <th>id</th> -->
                <th>nama</th>
                <th>nim</th>
                <th>jurusan</th>
                <th>email</th>
                <th>semester</th>
                <th>Gambar</th>
            </tr>
                <?php $i=1; ?>
                <?php foreach( $mahasiswa as $mhs) : ?>
                <tr>
                    <td><?= $i; ?></td>
                    <td><a href="ubah.php?id=<?= $mhs["id"]; ?>">Ubah</a> | <a href="hapus.php?id=<?= $mhs["id"]; ?>" onclick="return confirm('yakin?');">Hapus</a></td>
                        <?php foreach ($mhs as $par => $d) : ?>
                                <?php if($par !="id" && $par !="Gambar" ) :?>
                                <td><?= $d ?></td>
                                <?php elseif($par =="Gambar") : ?>
                                <td><img src="img/<?= $d ?>" width="100"></td>
                            <?php  endif; ?>
                        <?php endforeach; ?>
                </tr>
                <?php $i++; ?>
                <?php endforeach; ?>
        </table>
        <a href="TambahData.php">Tambahkan data!</a>
    <?php endif; ?>
</body>
</html>