<?php
include 'koneksi.php';
include 'function.php';
$menu = 'tentang';
?>

<!DOCTYPE html>
<html lang="id">
<?php include 'head.php' ?>

<body class="body">

  <?php include 'navbar.php' ?>

  <div class="carousel-inner">
    <div class="carousel-item active">
      <div
        style="width: 100%;max-width: 100%;max-height: 300px;overflow: hidden; display: flex; justify-content: center; align-items: center;">
        <img src="assets\img\carou2.jpg" alt="Ambasum gypsum" width="100%" height="auto">
        <div class="carousel-caption">
          <h1><b>AMBASUM</b></h1>
        </div>
      </div>
    </div>
  </div>
  <br><br><br>

  <div class="container-custom">
    <div class="row">
      <div class="col-md-6">
        <img src="assets/img/logo.PNG" alt="Los Angeles" width="100%" height="100%"
          style="border-radius: 10px 0 0 15px; ">
      </div>
      <div class="col-md-6">
        <div class="container">
          <br>
          <h1><b>TENTANG AMBASUM</b></h1>
          <br>
          Selamat datang di Ambasum - Mitra yang Tepercaya untuk Solusi Gypsum, Roster, dan Beton Berkualitas Tinggi!
          <br><br>
          Dengan bangga, kami hadirkan beragam produk unggulan untuk memenuhi segala kebutuhan interior dan eksterior Anda.
          dan eksterior Anda. Dengan warisan pengalaman yang mendalam dan komitmen terhadap terobosan inovatif,
          Ambasum telah menjadi pilihan utama bagi mereka yang menekankan pentingnya estetika dan keandalan dalam setiap aspek.
          <br><br>
          <a href="index.php" class="btn btn-dark btn-lg">LIHAT PRODUK</a>
          <br><br>
        </div>
      </div>
    </div>
  </div>
  <br>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Gypsum Terbaik</h5>
            <p class="card-text">Mulai dari langit-langit hingga dinding, gipsum kami mewujudkan harmoni antara keindahan dan ketangguhan. 
              Kami menyediakan berbagai pilihan ukuran dan gaya, memastikan bahwa setiap desain diperkaya dengan sentuhan unik yang sesuai dengan kebutuhan Anda.</p>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Roster Berkualitas</h5>
            <p class="card-text">Roster kami tidak hanya memberikan tekstur dan dimensi pada ruangan Anda, tetapi juga menambahkan karakter yang kuat. Dengan beragam pilihan motif, 
              kami memberikan Anda kebebasan untuk mengekspresikan gaya secara kreatif dan sesuai dengan preferensi Anda.</p>
          </div>
        </div>
      </div>
      <div class="col-sm-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Beton Anti Bencana</h5>
            <p class="card-text">Ketangguhan beton kami menjadikannya pilihan ideal untuk proyek interior dan eksterior. Kami menyediakan beton dalam berbagai varian, 
              membantu Anda menciptakan lantai dan dinding yang kokoh serta memikat secara visual.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <br>

  <div class="container-custom">
    <div class="container about-us">

      <div class="row">
        <div class="col-md-6">
          <div class="row">
            <div class="card-body">
              <h4>Kontak kami</h4>
              <p class="card-text">
              <p>PT. Ambasum </p>
              Jl. Wolter Monginsidi, Timbau, Kec. Tenggarong, Kab. Kutai Kartanegara, Kalimantan Timur 5569  </p>
              <p>Call/SMS/WA : 081269697782</p>
            </div>
          </div>
        </div>

        <div class="col-md-6">
          <div class="row">
            <div class="card-body">
              <h4>Media Sosial</h4>
              <p class="card-text">

              <p><img src="assets/img/facebook.png" width="50px" height="50px"> <a
                  href="https://web.facebook.com/Ambasum.gypsum">
                  Ambasum Gypsum</a></p>
              <p><img src="assets/img/iggg.png" width="50px" height="50px"> <a
                  href="https://instagram.com/Ambasum.gypsum">
                  Ambasum Gypsum</a></p>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>

  <br><br><br>

  <?php include 'foot.php' ?>

</body>

</html>