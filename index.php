<?php 
    session_start();
    require 'functions/functions.php';
    if(!isset($_SESSION["login"])){
      header("Location: page/pageLogin/login.php");
      exit;
    }
    if(isset($_SESSION['nickname'])){
      $sucsses = true;
    }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" href="style.css">
        <meta charset="utf-8">
	      <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Website percobaan</title>
    </head>
    <body>        
        <!-- NAVBAR -->
        <section class="dinoajur">
        <div class="container-nav">
          <ul class="ul-navbar" id="ul-navbar">
            <li class="li li-navbar-1"><a href="" class="a-a"><button class="button nav-button">HOME</button></a></li>
            <?php $base = isset($sucsses) ? "admin/index.php" : "" ; ?>
            <li class="li li-navbar-1"><a href="<?= $base ?>" class="a-a"><button class="button nav-button">ABOUT</button></a></li>
            <li class="li li-navbar-2"></li>
            <li class="li li-navbar-1"><a href="" class="a-a"><button class="button nav-button">RECOMENDATIONS</button></a></li>
            <?php if (isset($sucsses)) : ?>
            <li class="li li-navbar-1"><a href="page/pageLogin/logout.php" class="a-a"><button class="button nav-button"><?= $_SESSION['nickname'] ?></button></a></li>
            <?php else :?>
            <li class="li li-navbar-1"><a href="page/pageLogin/login.php" class="a-a"><button class="button nav-button">LOGIN</button></a></li>
            <?php endif; ?>
          </ul>
        <div class="div-table">   
          <table class="tabble">
              <tr><td><h2 class="nav-start1">Rekomendasi Anime</h2></td></tr>
              <tr class="td2"><td>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Repellat esse molestiae eveniet labore dolores iste culpa corrupti, vitae ex iure et dolor minima deserunt, doloremque qui, fugiat praesentium! Accusantium, mollitia.</td></tr>
              <tr><td><a href="page/page1/7juta.html"><button class="button body-button">Temukan</button></td></tr>
          </table>
        </div>
        </div>
        </section>
        <!-- NAVBAR SELESAI -->
        <!-- body -->
        <!-- <section class="dinorasu">
        <div class="container-body">

        </div>
        </section> -->
        <script src="script.js"></script>
    </body>
</html>