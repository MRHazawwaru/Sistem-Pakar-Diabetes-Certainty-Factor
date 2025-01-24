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
        </nav>
    </header>
    <section class="wrapper">
        <div class="container">
            <div class="grid-cols-2">
                <div class="grid-item-1">
                    <h2 class="main-heading">
                        Selamat Datang di <span>Sistem Pakar</span>
                        <br />
                        Diagnosa Penyakit Diabetes
                    </h2>
                    <p class="info-text">
                        Sistem ini dibuat untuk mendiagnosa penyakit diabetes berdasarkan gejala yang
                        dialami pasien
                    </p>

                    <div class="btn_wrapper">
                        <a href="{{ URL::to('/register') }}" class="custom-btn btn-12"><span>Yuk
                                Daftar!</span><span>Mau Diagnosa?</span></a>
                    </div>
                </div>
                <div class="grid-item-2">
                    <div class="team_img_wrapper">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- <script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script> -->
    <!-- <script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script> -->
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
</body>

</html>