<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>team project ver 0.1</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Do+Hyeon&amp;subset=korean">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nanum+Brush+Script&amp;subset=korean">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&amp;subset=korean">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nanum+Myeongjo:400,700,800&amp;subset=korean">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script&amp;subset=korean">
    <link rel="stylesheet" href="./resources/assets/css/styles.min.css?h=c0cda0268f11bcd1b840627200ac736c">
</head>

<body style="background-color:#ffffff;">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-search" style="background-color:rgba(218,232,243,0.45);width:1000px;padding:19px;margin:auto;margin-top:25px;height:102px;max-width:100%;">
        <div class="container"><a class="navbar-brand" href="/cocktail/">5SAKE</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav">
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Link 1</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">Link 2</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">Link 3</a></li>
                </ul>
                <form class="form-inline mr-auto" target="_self">
                    <div class="form-group"><label for="search-field"><i class="fa fa-search" style="margin:10px;"></i></label><input class="form-control search-field" type="search" name="search" id="search-field" style="margin-left:14px;"></div>
                </form><a class="btn btn-light action-button" role="button" href="#">LogOut</a></div>
        </div>
    </nav>
    <div class="wrapper" style="background-color:#ffffff;background-size:auto;background-position:center;">
        <section class="index-howto-alt py-3" style="margin-top:-121px;background-color:rgba(255,255,255,0.58);">
            <div class="container">
                <div class="psd-line pos-rel" style="position:relative;margin:auto;">
                    <div class="row align-items-center" style="margin:auto;margin-top:120px;height:500px;background-color:rgba(255,255,255,0);width:938px;max-width:100%;">
                        <div class="col-12 col-sm-6 d-flex flex-row justify-content-center align-items-center intro-card-1 p-5" style="background-image:url(${cocktail.imagerink });background-position:center;height:450px;background-size:contain;background-repeat:no-repeat;background-color:#ffffff;max-width:100%;">
                            <h2 class="grey-text d-none">Üyelik Tipini Seçerek Kayıt Olun</h2>
                        </div>
                        <div class="col-12 col-sm-6 offset-sm-0 d-flex flex-column justify-content-center p-5 psd-left1">
                            <p class="m-0 text-center text-sm-left" style="max-width:100%;min-width:auto;">${cocktail.receipe }<br></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="team-clean">
        <div class="container">
            <div class="intro">
                <h2 class="text-center" style="margin:auto;margin-bottom:36px;margin-top:0px;max-width:100%;">Recommend<br>Best Cocktail</h2>
                <p class="text-center" style="font-family:'Nanum Brush Script', cursive;font-size:31px;max-width:100%;">오늘 밤엔 이 칵테일 어떠세요?</p>
            </div>
            <div class="row people">
                <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="./resources/assets/detail_img/Negroni.jpg" style="background-image:url(./resources/assets/detail_img/Negroni.jpg);">
                    <h3 class="name" style="font-family:'Nanum Gothic', sans-serif;">네그로니</h3>
                    <p class="title" style="font-style:italic;"><strong>Negroni</strong><br></p>
                    <p class="description" style="font-family:'Nanum Gothic', sans-serif;">강렬한 붉은 색처럼 <br>강렬하게 혀를 감싸는 과일의 향</p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                </div>
                <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="./resources/assets/detail_img/LongIslandIcedTea.jpg" style="background-image:url(./resources/assets/detail_img/LongIslandIcedTea.jpg);">
                    <h3 class="name" style="font-family:'Nanum Gothic', sans-serif;">롱아일랜드 아이스티</h3>
                    <p class="title" style="font-style:italic;"><strong>Long Island Iced Tea</strong><br></p>
                    <p class="description" style="font-family:'Nanum Gothic', sans-serif;font-style:normal;">레몬의 상큼함과<br>커피처럼 은은하게 퍼지는 고혹한 향</p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                </div>
                <div class="col-md-6 col-lg-4 item"><img class="rounded-circle" src="./resources/assets/detail_img/OldFashioned.jpg" style="background-image:url(./resources/assets/detail_img/OldFashioned.jpg);">
                    <h3 class="name" style="font-family:'Nanum Gothic', sans-serif;">올드 패션</h3>
                    <p class="title" style="font-style:italic;"><strong>Old Fashioned</strong><br></p>
                    <p class="description" style="font-family:'Nanum Gothic', sans-serif;">고풍스러운 맛과<br>삼나무 숲의 향기</p>
                    <div class="social"><a href="#"><i class="fa fa-facebook-official"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-instagram"></i></a></div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/js/bootstrap.bundle.min.js"></script>
</body>

</html>