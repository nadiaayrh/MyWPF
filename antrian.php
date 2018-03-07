<?php 
require_once('clsdatabase.php');
$db = new database();
                            $db->connectMysql();
                            $antrian=$db->tampilanggota();

?>

<!DOCTYPE html>
<html lang="en-US">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Data Antrian Pasien</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="HandheldFriendly" content="true" />
    <meta name="MobileOptimized" content="320" />

    <link href="_include/css/bootstrap.min.css" rel="stylesheet">
    <link href="_include/css/main.css" rel="stylesheet">
    <link href="_include/css/supersized.css" rel="stylesheet">
    <link href="_include/css/supersized.shutter.css" rel="stylesheet">
    <link href="_include/css/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="_include/css/fonts.css" rel="stylesheet">
    <link href="_include/css/shortcodes.css" rel="stylesheet">
    <link href="_include/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="_include/css/responsive.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,200italic,300,300italic,400italic,600,600italic,700,700italic,900' rel='stylesheet' type='text/css'>
    <script src="_include/js/modernizr.js"></script>
    <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'Insert Your Code']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script');
            ga.type = 'text/javascript';
            ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(ga, s);
        })();

    </script>
</head>

<body>
    <header>
        <div class="sticky-nav">
            <a id="mobile-nav" class="menu-nav"></a>

            <div id="logo">
                <a id="goUp" href="#home-slider" title="Klinik Sehat">Klinik Sehat</a>
            </div>
            <div class="nav-menu">
                <ul id="top-menu">
                    <li><a href="index.php">Home</a></li>

                    <li class="active"><a href="antrian.php">Daftar Antrian</a></li>
                </ul>
            </div>

        </div>
    </header>
    <!-- End Header -->

    <!-- Our Work Section -->
    <div id="work" class="page">
        <div class="container">
            <!-- Title Page -->
            <div class="row">
                <div class="span12">
                    <div class="title-page"><br><br>
                        <h2 class="title">Daftar Pasien Yang Belum Di Periksa</h3>
                            <h3 class="title-description">Silahkan Mempersiapkan diri</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="span12">
                    <table class="table" id="dataTable" width="80%" cellspacing="10">
                        <thead>
                            <tr>
                                <th> No Antrian</th>
                                <th> NIK</th>
                                <th> Nama</th>
                                <th> Alamat</th>
                                <th> Gender</th>
                                <th> Usia</th>
                                <th> Keluhan</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php 
                            
                            $no=1;
                            foreach($antrian as $data){
                            ?>
                            <tr>
                                <td align="left">
                                    <?php echo $data['no_antrian']?>'</td>
                                <td align="left">
                                    <?php echo $data['kode_pasien']?>'</td>
                                <td align="left">
                                    <?php echo $data['nama']?>' </td>
                                <td align="left">
                                    <?php echo $data['alamat']?>' </td>
                                <td align="left">
                                    <?php echo $data['gender']?>'</td>
                                <td align="left">
                                    <?php echo $data['usia']?>' &nbsp;</td>
                                <td align="left">
                                    <?php echo $data['keluhan']?>'</td>
                                <td align="center">
                                </td>
                            </tr>

                            <?php $no++;  }?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <p class="credits">&copy;2017 Klinik sehat by <a href="http://www.stikombanyuwangi.ac.id/">Putri Nadia Ayu Rahmawati</a></p>
    </footer>
    <!-- End Footer -->

    <!-- Back To Top -->
    <a id="back-to-top" href="#">
	<i class="font-icon-arrow-simple-up"></i>
</a>
    <!-- End Back to Top -->


    <!-- Js -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <!-- jQuery Core -->
    <script src="_include/js/bootstrap.min.js"></script>
    <!-- Bootstrap -->
    <script src="_include/js/supersized.3.2.7.min.js"></script>
    <!-- Slider -->
    <script src="_include/js/waypoints.js"></script>
    <!-- WayPoints -->
    <script src="_include/js/waypoints-sticky.js"></script>
    <!-- Waypoints for Header -->
    <script src="_include/js/jquery.isotope.js"></script>
    <!-- Isotope Filter -->
    <script src="_include/js/jquery.fancybox.pack.js"></script>
    <!-- Fancybox -->
    <script src="_include/js/jquery.fancybox-media.js"></script>
    <!-- Fancybox for Media -->
    <script src="_include/js/jquery.tweet.js"></script>
    <!-- Tweet -->
    <script src="_include/js/plugins.js"></script>
    <!-- Contains: jPreloader, jQuery Easing, jQuery ScrollTo, jQuery One Page Navi -->
    <script src="_include/js/main.js"></script>
    <!-- Default JS -->
    <!-- End Js -->

</body>

</html>
