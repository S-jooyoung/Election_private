<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html class="no-js" lang="ko">
<!--<![endif]-->

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>EVERYONE'S POLITICS</title>
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="apple-touch-icon" href="apple-touch-icon.png" />

  <!--Google Fonts link-->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700,700i"
        rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,600,600i,700,700i" rel="stylesheet" />

  <link rel="stylesheet" href="../resources/css/iconfont.css" />
  <link rel="stylesheet" href="../resources/css/slick/slick.css" />
  <link rel="stylesheet" href="../resources/css/slick/slick-theme.css" />
  <link rel="stylesheet" href="../resources/css/font-awesome.min.css" />
  <link rel="stylesheet" href="../resources/css/jquery.fancybox.css" />
  <link rel="stylesheet" href="../resources/css/bootstrap.css" />
  <link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
  <link rel="stylesheet" href="../resources/css/magnific-popup.css" />
  <!--        <link rel="stylesheet" href="../resources/css/bootstrap-theme.min.css">-->

  <!--For Plugins external css-->
  <link rel="stylesheet" href="../resources/css/plugins.css" />

  <!--Theme custom css -->
  <link rel="stylesheet" href="../resources/css/style.css" />

  <!--Theme Responsive css-->
  <link rel="stylesheet" href="../resources/css/responsive.css" />

  <script src="../resources/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

  <!-- fullcalendar CDN -->
  <link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
  <!-- fullcalendar ?????? CDN -->
  <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>
  <script src='https://unpkg.com/tooltip.js/dist/umd/tooltip.min.js'></script>
  <script src="https://unpkg.com/popper.js/dist/umd/popper.min.js"></script>
  <!-- calendar custom JS-->
  <script src="../resources/js/calendar.js"></script>

  <!-- Swiper -->
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
  <link
          rel="stylesheet"
          href="https://unpkg.com/swiper/swiper-bundle.min.css"
  />

  <!-- font Awesome-->
  <script src="https://kit.fontawesome.com/a4196a8ce8.js" crossorigin="anonymous"></script>

  <!-- Chart js-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>



  <style>
    .fc-day:hover{background: lightblue; cursor: pointer;}
  </style>


</head>
<sec:authorize access="isAuthenticated()">
  <sec:authentication property="principal" var="principal"/>
</sec:authorize>

<body data-spy="scroll" data-target=".navbar-collapse">
<div class="preloader">
  <div class="loaded">&nbsp;</div>
</div>
<div class="culmn">
  <header id="main_menu" class="header navbar-fixed-top">
    <div class="main_menu_bg">
      <div class="container">
        <div class="row">
          <div class="nave_menu">

            <nav class="navbar navbar-default">
              <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                          data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="/">
                    <img src="../resources/images/logo.png" />
                  </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right">
                    <li><a href="#home">??????</a></li>
                    <li><a href="#history">?????? ?????????</a></li>
                    <li><a href="#portfolio">?????? ??????</a></li>
                    <li><a href="#pricing">?????? ????????????</a></li>
                    <li><a href="#team">?????? ?????????</a></li>
                    <li><a href="#blog">?????? ??????</a></li>
                    <li>
                      <sec:authorize access="!isAuthenticated()">
                        <a href="https://kauth.kakao.com/oauth/authorize?client_id=17d0622174b2b4cd77314e16dd2d9dde&redirect_uri=http://localhost:8080/auth/kakao/callback&response_type=code">?????????</a>
                      <%--<sec:authentication property="name" />??? ??????????????? ^^ ??????--%>
                      </sec:authorize>
                      <sec:authorize access="isAuthenticated()">
                        <a href="#">????????????</a>
                        <a href="/vote/myProfileInfo"><p><c:out value="${principal.username}"/>??? ???????????????.</p></a>
                      </sec:authorize>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!--End of header -->

  <!--home Section (countdown ????????????)-->
  <section id="home" class="home">
    <div class="overlay">
      <div class="home_skew_border">
        <div class="container">
          <div class="row">
            <div class="col-sm-12">
              <div class="main_home_slider text-center">
                <div class="single_home_slider">
                  <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                    <h3>????????? ????????? ???????????????</h3>
                    <h1>EVERYONE'S POLITICS</h1>
                    <div class="separator"></div>
                    <h1 id="countdown">
                      The most spectacular coming soon template!
                    </h1>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>



        <!-- Feature section -->

        <div class="container">
          <div class="row">
            <div class="main_feature text-center">
              <div class="col-sm-3">
                <div class="single_feature">
                  <div class="single_feature_icon">
                    <i class="fa fa-clone"></i>
                  </div>

                  <h4>?????????</h4>
                  <div class="separator3"></div>

                </div>
              </div>

              <div class="col-sm-3">
                <div class="single_feature">
                  <div class="single_feature_icon">
                    <i class="fa fa-heart-o"></i>
                  </div>

                  <h4>??????</h4>
                  <div class="separator3"></div>

                </div>
              </div>

              <div class="col-sm-3">
                <div class="single_feature">
                  <div class="single_feature_icon">
                    <i class="fa fa-lightbulb-o"></i>
                  </div>
                  <h4>????????????</h4>
                  <div class="separator3"></div>

                </div>
              </div>

              <div class="col-sm-3">
                <div class="single_feature">
                  <div class="single_feature_icon">
                    <i class="fa fa-comments-o"></i>
                  </div>

                  <h4>?????????</h4>
                  <div class="separator3"></div>

                </div>
              </div>

            </div>

            <!-- End Feature section -->

          </div>
        </div>
      </div>
    </div>
  </section>
  <!--End of home section (???????????? ???) -->


  <!-- History section (?????????)-->
  <section id="history" class="history sections">
    <div class="container">
      <div class="row">
        <div class="main_history">
          <div class="col-sm-12">

            <div id="calendar"></div>

          </div>


        </div>
      </div>
      <!--End of row -->
    </div>
    <!--End of container -->
  </section>
  <!--End of history  (????????? ???) -->


  <!-- Portfolio section (??????)-->
  <section id="portfolio" class="portfolio sections">
    <div class="container">
      <div class="row">
        <div class="main_portfolio">
          <div class="col-md-12">
            <div class="head_title text-center">
              <h2>?????? ??????</h2>
              <div class="subtitle">
                ????????? ??????????????? ????????? ????????? ???????????????
              </div>
              <div class="separator"></div>
            </div>
          </div>
          <div class="work_menu text-center">
            <div id="filters" class="toolbar mb2 mt2">
              <button class="btn-md fil-cat filter active" data-filter="all">
                ALL</button>/
              <button class="btn-md fil-cat filter" data-rel="blue" data-filter=".blue">
                ?????????</button>/
              <button class="btn-md fil-cat filter" data-rel="red" data-filter=".red">
                ?????????</button>/
              <button class="btn-md fil-cat filter" data-rel="yellow" data-filter=".yellow">
                ?????????</button>/
              <button class="btn-md fil-cat filter" data-rel="bcards" data-filter=".bcards">
                ?????????</button>/
              <button class="btn-md fil-cat filter" data-rel="photo" data-filter=".photo">
                ?????????</button>/
            </div>
          </div>
        </div>
      </div>


      <div id="portfoliowork">
        <div class="single_portfolio tile scale-anm  red ">
          <img src="../resources/images/pf1.jpeg" alt="" />
          <a href="/vote/promiseList">
            <div class="grid_item_overlay">
              <div class="separator4"></div>
              <h3>???????????????</h3>
              <p>art / t-shirt/p>
            </div>
          </a>
        </div>
        <div class="single_portfolio tile scale-anm red">
          <img src="../resources/images/pf2.jpeg" alt="" />
          <a href="/vote/promiseList" class="portfolio-img">
            <div class="grid_item_overlay">
              <div class="separator4"></div>
              <h3>???????????????</h3>
              <p>art / t-shirt</p>
            </div>
          </a>
        </div>
        <div class="single_portfolio tile scale-anm red">
          <img src="../resources/images/pf3.jpeg" alt="" />
          <a href="/vote/promiseList" class="portfolio-img">
            <div class="grid_item_overlay">
              <div class="separator4"></div>
              <h3>???????????????</h3>
              <p>art / t-shirt</p>
            </div>
          </a>
        </div>
        <div class="single_portfolio tile scale-anm red ">
          <img src="../resources/images/pf4.jpeg" alt="" />
          <a href="/vote/promiseList" class="portfolio-img">
            <div class="grid_item_overlay">
              <div class="separator4"></div>
              <h3>???????????????</h3>
              <p>art / t-shirt</p>
            </div>
          </a>
        </div>
        <div class="single_portfolio tile scale-anm blue">
          <img src="../resources/images/pf5.png" alt="" />
          <a href="/vote/promiseList" class="portfolio-img">
            <div class="grid_item_overlay">
              <div class="separator4"></div>
              <h3>???????????????</h3>
              <p>art / t-shirt</p>
            </div>
          </a>
        </div>

        <div class="single_portfolio tile scale-anm blue">
          <img src="../resources/images/pf6.png" alt="" />
          <a href="/vote/promiseList" class="portfolio-img">
            <div class="grid_item_overlay">
              <div class="separator4"></div>
              <h3>???????????????</h3>
              <p>art / t-shirt</p>
            </div>
          </a>
        </div>
        <div class="single_portfolio tile scale-anm blue">
          <img src="../resources/images/pf7.png" alt="" />
          <a href="/vote/promiseList" class="portfolio-img">
            <div class="grid_item_overlay">
              <div class="separator4"></div>
              <h3>???????????????</h3>
              <p>art / t-shirt</p>
            </div>
          </a>
        </div>
      </div>

      <div style="clear: both"></div>
    </div>

    <!-- End off container -->
  </section>
  <!-- End off Portfolio Section (?????? ???) -->




  <!-- Pricing Section (????????????) -->
  <section id="pricing" class="pricing sections">
    <div class="container">
      <div class="pricing-title">
        <h2>?????? ????????????</h2>
        <div class="subtitle">
          ????????? ??????????????? ??????????????? ????????? ???????????????
        </div>
      </div>
      <!-- Swiper -->
      <div class="swiper mySwiper02" >
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <div class="swiper-slide-gallbox-pic01 galloboxstyle">
              <a href="/vote/behindList">
                <h2>?????????</h2>
                <p>????????? ????????????<br />???????????? ?????????!</p>
              </a>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="swiper-slide-gallbox-pic02 galloboxstyle">
              <a href="/vote/behindList">
                <h2>?????????</h2>
                <p>????????? ????????? ??????<br />??????????????????.</p>
              </a>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="swiper-slide-gallbox-pic03 galloboxstyle ">
              <a href="/vote/behindList">
                <h2>?????????</h2>
                <p>
                  ???????????? ????????????,<br />???????????? ???????????????
                </p>
              </a>
            </div>
          </div>
          <div class="swiper-slide">
            <div class="swiper-slide-gallbox-pic04">
              <a href="/vote/behindList">
                <h2>????????????</h2>
                <p>?????? ????????? ?????? ??????</p>
              </a>
            </div>
          </div>
        </div>
        <div class="swiper-pagination"></div>
      </div>
    </div>

    <!-- End off container -->
  </section>
  <!-- End off Pricing Section (???????????? ???)-->




  <!-- Team Section (?????????)-->
  <section id="team" class="team">
    <div class="main_team_area">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="head_title textwhite text-center margin-top-80">
              <h2>?????? ?????????</h2>
              <div class="subtitle">
                ??????????????? ????????? ???????????? ??????????????????.
              </div>
              <div class="separator"></div>
            </div>
            <!-- End off Head_title -->

            <div class="main_team margin-bottom-400">
              <div class="desk1">
                <div class="bar2">
                  <h2 class="main_bar2">???????????????</h2>
                  <a href="/vote/boardList"><div class="more1" title="?????????"><i class="fas fa-plus fa-2x"></i></div></a>
                </div>
                <div class="list1">
                  <ul>

                    <a href="/vote/boardList">
                      <li>
                        <div class="cont">
                          <span class="label">?????????</span><span class="date">2021.11.30</span><i class="fas fa-chevron-right fa-2x"></i></i><br>
                          <h3>????????? ????????? ?????? ?????????????</h3>
                        </div>
                      </li>
                    </a>

                    <a href="/vote/boardList">
                      <li>
                        <div class="cont">
                          <span class="label">?????????</span><span class="date">2021.11.15</span><i class="fas fa-chevron-right fa-2x"></i></i><br>
                          <h3>????????? ??????????????? ????????? ????????????..</h3>
                        </div>
                      </li>
                    </a>

                    <a href="/vote/boardList">
                      <li>
                        <div class="cont">
                          <span class="label">?????????</span><span class="date">2021.11.30</span><i class="fas fa-chevron-right fa-2x"></i></i><br>
                          <h3>????????? ????????? ?????? ?????????????</h3>
                        </div>
                      </li>
                    </a>


                    <a href="../board/board_view.html?num=145676">
                      <li>
                        <div class="cont">
                          <span class="label">?????????</span><span class="date">2021.11.15</span><i class="fas fa-chevron-right fa-2x"></i><br>
                          <h3>???????????? ?????? ????????? ??????</h3>
                        </div>
                      </li>
                    </a>

                  </ul>
                </div>
              </div>
            </div>
          </div>
          <!-- End of main team contant -->
        </div>
      </div>
      <!-- End of container -->
    </div>
  </section>
  <!-- End off Team Section(????????? ???) -->



  <!-- Blog Section (??????)-->
  <section id="blog" class="blog">
    <div class="container-fluid">
      <div class="row">
        <div class="main_blog sections">
          <div class="head_title text-center margin-top-20">
            <h2>?????? ??????</h2>
            <div class="subtitle">
              ??????????????? ?????? ?????? ?????????
            </div>
            <div class="separator"></div>
          </div>
          <!-- End off Head_title -->
          <div class="work_menu text-center">
            <div id="filters2" class="toolbar mb2 mt2">
              <button class="btn-md fil-cat filter active" data-filter="all">
                ALL</button>/
              <button class="btn-md fil-cat filter"  data-filter=".blue">
                10~20???</button>/
              <button class="btn-md fil-cat filter"  data-filter=".red">
                30~40???</button>/
              <button class="btn-md fil-cat filter"  data-filter=".yellow">
                50~60???</button>/
              <button class="btn-md fil-cat filter"  data-filter=".bcards">
                70~80???</button>/
            </div>
          </div>

          <div id="chartview" class="chartview" >
            <!--????????? ????????? ??????-->
            <canvas id="myChart"></canvas>
          </div>

          <a href="../board/board.html?bbs_code=JS20">
            <div class="votelink" title="????????????">
              <span class="label">????????????</span>
            </div>
          </a>

        </div>




      </div>
    </div>

    <!-- End off container -->
  </section>
  <!-- End off Blog Section(?????? ???) -->



  <!--Footer section-->
  <section class="footer">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="main_footer">
            <div class="row">
              <div class="col-sm-6 col-xs-12">
                <div class="flowus">
                  <a href=""><i class="fa fa-facebook"></i></a>
                  <a href=""><i class="fa fa-twitter"></i></a>
                  <a href=""><i class="fa fa-google-plus"></i></a>
                  <a href=""><i class="fa fa-instagram"></i></a>
                  <a href=""><i class="fa fa-youtube"></i></a>
                  <a href=""><i class="fa fa-dribbble"></i></a>
                </div>
              </div>

              <div class="col-sm-6 col-xs-12">
                <div class="copyright_text">
                  <p class="wow fadeInRight" data-wow-duration="1s">
                    Made with <i class="fa fa-heart"></i> by
                    <a href="https://bootstrapthemes.co">Bootstrap Themes</a>2016. All Rights Reserved
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End off footer Section-->
</div>

<!-- START SCROLL TO TOP  -->
<div class="scrollup">
  <a href="#"><i class="fa fa-chevron-up"></i></a>
</div>

<script src="../resources/js/vendor/jquery-1.11.2.min.js"></script>
<script src="../resources/js/vendor/bootstrap.min.js"></script>

<script src="../resources/js/jquery.magnific-popup.js"></script>
<script src="../resources/js/jquery.mixitup.min.js"></script>
<script src="../resources/js/jquery.easing.1.3.js"></script>
<script src="../resources/js/jquery.masonry.min.js"></script>

<!--slick slide js -->
<script src="../resources/css/slick/slick.js"></script>
<script src="../resources/css/slick/slick.min.js"></script>


<script src="../resources/js/jquery.countdown.min.js"></script>
<script src="../resources/js/plugins.js"></script>
<script src="../resources/js/main.js"></script>






<!-- Initialize Swiper -->
<script>
  var swiper = new Swiper(".mySwiper02", {
    slidesPerView: 2,
    spaceBetween: 30,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    breakpoints: {
      310: {
        slidesPerView: 1,
        spaceBetween: 0,
      },
      721: {
        slidesPerView: 2,
        spaceBetween: 40,
      },
      1025: {
        slidesPerView: 3,
        spaceBetween: 50,
      },
    },
  });
</script>


<!-- JavaScript for BarChart-->
<script type="text/javascript">
  var context = document
          .getElementById('myChart')
          .getContext('2d');
  var myChart = new Chart(context, {
    type: 'bar', // ????????? ??????
    data: { // ????????? ????????? ?????????
      labels: [
        //x ???
        '?????????','?????????','?????????','?????????'
      ],
      datasets: [
        { //?????????
          label: '?????? ??????', //?????? ??????
          fill: false, // line ????????? ???, ??? ????????? ???????????? ???????????????
          data: [
            15,42,25,20 //x??? label??? ???????????? ????????? ???
          ],
          backgroundColor: [
            //??????
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 99, 132, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',

          ],
          borderColor: [
            //????????? ??????
            'rgba(54, 162, 235, 1)',
            'rgba(255, 99, 132, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',

          ],
          borderWidth: 2 //????????? ??????
        }/* ,
              {
                  label: 'test2',
                  fill: false,
                  data: [
                      8, 34, 12, 24
                  ],
                  backgroundColor: 'rgb(157, 109, 12)',
                  borderColor: 'rgb(157, 109, 12)'
              } */
      ]
    },
    options: {
      scales: {
        yAxes: [
          {
            ticks: {
              beginAtZero: true
            }
          }
        ]
      }
    }
  });
</script>



</body>

</html>