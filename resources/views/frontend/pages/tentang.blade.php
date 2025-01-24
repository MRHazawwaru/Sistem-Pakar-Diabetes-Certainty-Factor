<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sistem Pakar {{ isset($titlePage) ? ' | ' . $titlePage : '' }}</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ URL::to('adminlogin/plugins/fontawesome-free/css/all.min.css') }}">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{ URL::to('adminlogin/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ URL::to('adminlogin/dist/css/adminlte.min.css') }}">
    {{-- Bootstrap 5 CSS --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"
        media="all">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <!-- ====  REMIXICON CDN ==== -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet" />

    <!-- ==== ANIMATE ON SCROLL CSS CDN  ==== -->
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    {{-- Customize CSS --}}
    <link rel="stylesheet" href="{{ URL::to('assets/dist/css/customstyle.css') }}">
    <link rel="stylesheet" href="{{ URL::to('assets/dist/css/button.css') }}">
</head>

<body>
    <!-- ==== HEADER ==== -->
    <header class="container header">
        <!-- ==== NAVBAR ==== -->
        <nav class="nav">
            <div class="logo">
                <h2>DiaCare.</h2>
            </div>
            <div class="nav_menu" id="nav_menu">
                <button class="close_btn" id="close_btn">
                    <i class="ri-close-fill"></i>
                </button>
                <ul class="nav_menu_list">
                    <li class="nav_menu_item">
                        <a href="{{ URL::to('/') }}" class="nav_menu_link">Beranda</a>
                    </li>
                    <li class="nav_menu_item">
                        <a href="{{ URL::to('/tentang') }}" class="nav_menu_link">Tentang</a>
                    </li>
                    <li class="nav_menu_item">
                        <a href="{{ URL::to('/info-penyakit') }}" class="nav_menu_link">Informasi Penyakit</a>
                    </li>
                    <a href="{{ URL::to('login') }}" class="custom-btn btn btn-3"><span>login</span></a>
                </ul>
            </div>
            <button class="toggle_btn" id="toggle_btn">
                <i class="ri-menu-line"></i>
            </button>
        </nav>
    </header>
    <div class="container">
        <div class="mb-3 card">
            <img src="https://i.pinimg.com/736x/76/3d/3e/763d3ec52dc86e6fa5f9fa814dac2846.jpg" class="card-img-top"
                alt="...">
            <div class="card-body">
                <h2 class="mb-4 text-center fw-bold">Tentang</h2>
                <p class="text-justify">
                    Sistem Pakar adalah aplikasi berbasis komputer yang digunakan untuk
                    menyelesaikan masalah sebagaimana yang dipikirkan oleh pakar. Pakar yang
                    dimaksud adalah orang yang mempunyai keahlian khusus yang dapat
                    menyelesaikan masalah yang tidak dapat diselesaikan oleh orang awam. Sebagai
                    contoh, dokter adalah seorang pakar yang mampu mendiagnosia penyakit yang
                    diderita pasien serta dapat memberikan penjelasan terhadap penyakit tersebut.
                </p>
                <p class="text-justify">
                    Sistem Pakar juga merupakan program artificial intellegence yang
                    menggabungkan pangkalan pengetahuan (Knowledge Base) dengan sistem
                    inferensi. Ini merupakan bagian software spesialisasi tingkat tinggi yang berusaha
                    menduplikasikan fungsi seorang pakar dalam suatu bidang keahlian. Program ini
                    bertidak sebagai seorang konsultan yang cerdas atau penasihat dalam suatu
                    lingkungan keahlian tertentu [7]. Tujuan dari Sistem Pakar adalah untuk
                    mentransfer keahlian dari seorang pakar ke dalam komputer kemudian ke
                    masyarakat. Proses ini meliputi empat kegiatan, yaitu perolehan pengetahuan (dari
                    para ahli atau sumber-sumber lainnya), representasi pengetahuan ke komputer,
                    kesimpulan dari pengetahuan dan pengalihan pengetahuan ke pengguna. Hal yang
                    unik dari Sistem Pakar adalah kemampuan untuk menjelaskan dimana keahlian
                    tersimpan dalam basis pengetahuan. Kemampuan komputer untuk mengambil
                    kesimpulan dilakukan oleh komponen yang dikenal sebagai mesin inferensi yaitu
                    meliputi prosedur tentang pemecahan masalah. Sistem Pakar yang dibuat
                    merupakan sistem yang berdasarkan pada aturan-aturan dimana program
                    disimpan dalam bentuk aturan-aturan sebagai prosedur pemecahan masalah.
                    Aturan tersebut biasanya berbentuk IF-THEN.
                </p>
                <p class="text-justify">
                    Secara umum, ada empat orang yang terlibat dalam pembuatan Sistem Pakar ,
                    yaitu [8]:
                <table class="table">
                    <tbody>
                        <tr>
                            <td>1.</td>
                            <td>Pakar</td>
                            <td>
                                Pakar/ahli (expert) adalah seorang yang memiliki pengetahuan khusus,
                                pandangan, pengalaman dan metode yang mendukung kemampuan untuk
                                memberikan saran dan penyelesaian masalah.
                            </td>
                        </tr>
                        <tr>
                            <td>2.</td>
                            <td>Perekayasaan pengetahuan</td>
                            <td>
                                Perekayasaan pengetahuan (knowledge enginer) adalah seorang yang berperan
                                dalam menerjemahkan pengetahuan seorang pakar sehingga pengetahuan
                                tersebut dapat digunakan oleh sistem komputer. Umumnya, seorang yang
                                menerjemahkan pengetahuan juga berperan sebagai pembuat sistem (system
                                builder).
                            </td>
                        </tr>
                        <tr>
                            <td>3.</td>
                            <td>Pemakai</td>
                            <td>
                                Pemakai (user) adalah seseorang yang berkonsultasi dengan sistem pakar untuk
                                mendapatkan saran dan solusi dari seorang pakar.
                            </td>
                        </tr>
                    </tbody>
                </table>
                </p>
            </div>
        </div>
    </div>
    <script src="{{ URL::to('assets/js/frontend.js') }}"></script>
    <!-- jQuery -->
    <script src="{{ URL::to('adminlogin/plugins/jquery/jquery.min.js') }}"></script>
    <!-- Bootstrap 5 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>
    <!-- ==== ANIMATE ON SCROLL JS CDN -->
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <!-- ==== GSAP CDN ==== -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>
    <!-- ==== SCRIPT.JS ==== -->
    <script src="./script.js" defer></script>
    <!-- AdminLTE App -->
    <script src="{{ URL::to('adminlogin/dist/js/adminlte.min.js') }}"></script>
    <script>
        function isNumberKey(evt){
        var charCode = (evt.which) ? evt.which : evt.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
    </script>