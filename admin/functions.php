<?php 
    // konek ke database terlebih dahulu dengan format (hostname, username, password, database name )
    $conn = mysqli_connect("localhost","root" , "", "phpdasar");
    if (!$conn) {
        die("Koneksi gagal: " . mysqli_connect_error());
    }

    // ambil data dari database
    function query($query){
        global $conn;
        $result  = mysqli_query($conn, $query); // mengambil lemari
        $rows = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $rows[] = $row;// $rows = [["id"=>"1","nama"=>"anton"]]
            }
            return $rows; // outputnya
    }

    // var_dump($result);    
    // ambil data dari objek $result
        // mysqli_fetch_row() = array numerik
        // mysqli_fetch_assoc() = array asosiatif
        // mysqli_fetch_array() = seluruh tipe array
        // mysqli_fetch_object() = mengembalikan objek yaitu -> sebagai penjelas
            // misal mysqli_fertch_row($result->nama);
    // while ($data = mysqli_fetch_assoc($result)){
    // var_dump($data);
    // }

    // $anton=["anis","ahok","jokowi"];

    // $lmao=[];
    // $i=0;
    // while($i<3){
    //     $lmao[]=$anton[$i];
    //     $i++;
    // }
    // var_dump($lmao);

    function ambil($perintah) {
        global $conn;
        $nama = htmlspecialchars($perintah["nama"]);
        $nim = htmlspecialchars($perintah["nim"]);
        $jurusan = htmlspecialchars($perintah["jurusan"]);
        $email = htmlspecialchars($perintah["email"]);
        $semester = htmlspecialchars($perintah["semester"]);
        
        $Gambar = upload();
            if($Gambar==9){
                return 9;
            }
            elseif($Gambar==8){
                return 8;
            }
            elseif (!$Gambar){
                return false;
            }

         // kirim data ke database
         $query = "INSERT INTO mahasiswa VALUES
         (NULL,'$nama','$nim','$jurusan','$email','$semester','$Gambar')";
         if(empty($nama) || empty($nim) || empty($jurusan) || empty($email) || empty($semester) || empty($Gambar) || !filter_var($semester, FILTER_VALIDATE_INT) ){ 
            return false;
            exit;
         }
         else {                
             if (mysqli_query($conn, $query)) {
                 echo "
                <script>
                alert('data berhasil ditambahkan!');
                window.location.href='inde.php';
                </script>";
                return true;
             }
         }   
     
    }

    function upload(){
        $namaFiles = $_FILES['Gambar']['name'];
        $ukuranFiles = $_FILES['Gambar']['size'];
        $error = $_FILES['Gambar']['error'];
        $tmpName = $_FILES['Gambar']['tmp_name'];

        // cek apakah tidak ada gambar yang di upload
        if($error ===4 ){
            echo 
            "<script>
            alert('pilih gambar terlebih dahulu');
            </script>";
            return false;
        }

        $ekstensiGambarValid = ['jpg','jpeg','png','webp'];
        $ekstensiGambar = explode('.',$namaFiles);
        $ekstensiGambar = strtolower(end($ekstensiGambar));
        if(!in_array($ekstensiGambar,$ekstensiGambarValid)){
            return 9;
            }
            
        // cek ukuran gambar
        if($ukuranFiles > 3000000){
            return 8;
            }
        // lolos pengecekan, gambar siap di upload
        // generate nama gambar baru
        $namaGambarBaru = uniqid().".$ekstensiGambar";
        // $namaGambarBaru .= '.';
        // $namaGambarBaru .= $ekstensiGambar;
        move_uploaded_file($tmpName,'img/'.$namaGambarBaru);
        return $namaGambarBaru;

    }

    function hapus($id){
        global $conn;
         if (mysqli_query($conn,"DELETE FROM mahasiswa WHERE id=$id")){
            echo "
            <script>
            alert('data berhasil dihapus!');
            window.location.href='index.php';
            </script>";
            exit;
         } else {
            echo "
            <script>
            alert('data gagal dihapus!');
            window.location.href='index.php';
            </script>";
            exit;
         }
    }

    function rubah($perintah,$id,$gambarLama){
        global $conn;
        $nama = htmlspecialchars($perintah["nama"]);
        $nim = htmlspecialchars($perintah["nim"]);
        $jurusan = htmlspecialchars($perintah["jurusan"]);
        $email = htmlspecialchars($perintah["email"]);
        $semester = htmlspecialchars($perintah["semester"]);
        if($_FILES['Gambar']['error'] === 4 ){
            $Gambar = $gambarLama;
        } else {
            $Gambar = upload();
            if($Gambar==9){
                return 9;
            }
            elseif($Gambar==8){
                return 8;
            }
            elseif (!$Gambar){
                return false;
            }
        }
        $query="UPDATE mahasiswa SET
         nama = '$nama',
         nim = '$nim',
         jurusan = '$jurusan',
         email = '$email',
         semester = '$semester',
         Gambar = '$Gambar'
         WHERE id = $id";

        if(empty($nama) || empty($nim) || empty($jurusan) || empty($email) || empty($semester) || empty($Gambar) || !filter_var($semester, FILTER_VALIDATE_INT) ){ 
           return true;
           exit;
        }
        else {                
            if (mysqli_query($conn, $query)) {
                echo "
               <script>
               alert('data berhasil diubah!');
               window.location.href='index.php';
               </script>";
               exit;
            }
        }
    }

    function cari($keyword,$indeksMulai,$jumlahDataPerhalaman){
        $query = "SELECT * FROM mahasiswa WHERE
                    nama LIKE '%$keyword%' or 
                    nim LIKE '%$keyword%' or
                    jurusan LIKE '%$keyword%' or
                    email LIKE '%$keyword%' or
                    semester LIKE '%$keyword%'
                ";
        return query($query);
    }
    // keyword% == an% keyword
    // %keyword == keyword %ton

?>