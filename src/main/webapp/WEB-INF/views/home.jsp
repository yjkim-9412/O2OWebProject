<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">

  <title>SeoGram - SEO Agency Template</title>

  <link rel="stylesheet" href="resources/css/maicons.css">

  <link rel="stylesheet" href="resources/css/bootstrap.css">

  <link rel="stylesheet" href="resources/vendor/animate/animate.css">

  <link rel="stylesheet" href="resources/css/theme.css">

</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>

  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="500">
      <div class="container">
        <a href="#" class="navbar-brand">Seo<span class="text-primary">Gram.</span></a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse collapse" id="navbarContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="about.html">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="service.html">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="blog.html">Blog</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
            <li class="nav-item">
              <a class="btn btn-primary ml-lg-2" href="<%=request.getContextPath() %>/member/insert">회원가입</a>
            </li>
          </ul>
        </div>

      </div>
    </nav>

    <div class="container">
      <div class="page-banner home-banner">
        <div class="row align-items-center flex-wrap-reverse h-100">
          <div class="col-md-6 py-5 wow fadeInLeft">
            <h1 class="mb-4">Let's Check and Optimize your website!</h1>
            <p class="text-lg text-grey mb-5">Ignite the most powerfull growth engine you have ever built for your company</p>
            <a href="#" class="btn btn-primary btn-split">Watch Video <div class="fab"><span class="mai-play"></span></div></a>
          </div>
          <div class="col-md-6 py-5 wow zoomIn">
            <div class="img-fluid text-center">
              <img src="resources/img/banner_image_1.svg" alt="">
            </div>
          </div>
        </div>
        <a href="#about" class="btn-scroll" data-role="smoothscroll"><span class="mai-arrow-down"></span></a>
      </div>
    </div>
  </header>

  <div class="page-section">
    <div class="container">
      <div class="row">
		
<!-- 아이콘 카테고리 -->
<div class="icon-bar">
  <a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/icon/1.png"><figcaption>카테고리1</figcaption></figure></a>
  <a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/icon/2.png"><figcaption>카테고리2</figcaption></figure></a>
  <a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/icon/3.png"><figcaption>카테고리3</figcaption></figure></a>
  <a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/icon/4.png"><figcaption>카테고리4</figcaption></figure></a>
  <a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/icon/5.png"><figcaption>카테고리5</figcaption></figure></a>
</div>
<!-- 아이콘 카테고리 끝-->		

		
      </div>
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <div class="page-section" id="about">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 py-3 wow fadeInUp">
          <span class="subhead">About us</span>
          <h2 class="title-section">The number #1 SEO Service Company</h2>
          <div class="divider"></div>

          <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.</p>
          <p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.</p>
          <a href="about.html" class="btn btn-primary mt-3">Read More</a>
        </div>
        <div class="col-lg-6 py-3 wow fadeInRight">
          <div class="img-fluid py-3 text-center">
            <img src="resources/img/about_frame.png" alt="">
          </div>
        </div>
      </div>
    </div> <!-- .container -->
  </div> <!-- .page-section -->

<!-- 인기 서비스 -->
<div class="container">
    <h4 class="text-left"><b>인기 서비스</b></h4>
    <div class="row">
	    <div class="col-sm-4">
	        <div class="item"><a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/service1.png" class="img-thumbnail"><figcaption>서비스1</figcaption></figure></a></div>
		    
	    </div>
	    <div class="col-sm-4">
		    <div class="item"><a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/service2.png" class="img-thumbnail"><figcaption>서비스2</figcaption></figure></a></div>
	    </div>
	    <div class="col-sm-4">
		    <div class="item"><a href="#" style="text-decoration: none; color: black"><figure><img src="resources/img/service3.png" class="img-thumbnail"><figcaption>서비스3</figcaption></figure></a></div>
	    </div>
    </div>
</div>
<!-- 인기 서비스 끝 --> 

<!-- 인기 숨은고수 -->
<br><br><br><br>
 <div class="container">
      <h4 class="text-left"><b>인기 숨은고수</b></h4>	
  <div class="row">
    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
      <div class="our-team">
        <div class="picture">
          <img class="img-fluid" src="https://picsum.photos/130/130?image=1027">
        </div>
        <div class="team-content">
          <h3 class="name">Michele Miller</h3>
          <h4 class="title">레슨/보컬</h4>
        </div>
      </div>
    </div>
    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
      <div class="our-team">
        <div class="picture">
          <img class="img-fluid" src="https://picsum.photos/130/130?image=839">
        </div>
        <div class="team-content">
          <h3 class="name">Patricia Knott</h3>
          <h4 class="title">청소/이사</h4>
        </div>
      </div>
    </div>
    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
      <div class="our-team">
        <div class="picture">
          <img class="img-fluid" src="https://picsum.photos/130/130?image=856">
        </div>
        <div class="team-content">
          <h3 class="name">Justin Ramos</h3>
          <h4 class="title">건강/헬스</h4>
        </div>
      </div>
    </div>
    <div class="col-12 col-sm-6 col-md-4 col-lg-3">
      <div class="our-team">
        <div class="picture">
          <img class="img-fluid" src="https://picsum.photos/130/130?image=836">
        </div>
        <div class="team-content">
          <h3 class="name">Mary Huntley</h3>
          <h4 class="title">차량/수리</h4>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- 인기 숨은고수 끝 -->

  <div class="page-section">
    <div class="container">
      <div class="text-center wow fadeInUp">
        <div class="subhead">Pricing Plan</div>
        <h2 class="title-section">Choose plan the right for you</h2>
        <div class="divider mx-auto"></div>
      </div>
      <div class="row mt-5">
        <div class="col-lg-4 py-3 wow zoomIn">
          <div class="card-pricing">
            <div class="header">
              <div class="pricing-type">Basic</div>
              <div class="price">
                <span class="dollar">$</span>
                <h1>39<span class="suffix">.99</span></h1>
              </div>
              <h5>Per Month</h5>
            </div>
            <div class="body">
              <p>25 Analytics <span class="suffix">Campaign</span></p>
              <p>1,300 Change <span class="suffix">Keywords</span></p>
              <p>Social Media <span class="suffix">Reviews</span></p>
              <p>1 Free <span class="suffix">Optimization</span></p>
              <p>24/7 <span class="suffix">Support</span></p>
            </div>
            <div class="footer">
              <a href="#" class="btn btn-pricing btn-block">Subscribe</a>
            </div>
          </div>
        </div>

        <div class="col-lg-4 py-3 wow zoomIn">
          <div class="card-pricing marked">
            <div class="header">
              <div class="pricing-type">Standar</div>
              <div class="price">
                <span class="dollar">$</span>
                <h1>59<span class="suffix">.99</span></h1>
              </div>
              <h5>Per Month</h5>
            </div>
            <div class="body">
              <p>25 Analytics <span class="suffix">Campaign</span></p>
              <p>1,300 Change <span class="suffix">Keywords</span></p>
              <p>Social Media <span class="suffix">Reviews</span></p>
              <p>1 Free <span class="suffix">Optimization</span></p>
              <p>24/7 <span class="suffix">Support</span></p>
            </div>
            <div class="footer">
              <a href="#" class="btn btn-pricing btn-block">Subscribe</a>
            </div>
          </div>
        </div>

        <div class="col-lg-4 py-3 wow zoomIn">
          <div class="card-pricing">
            <div class="header">
              <div class="pricing-type">Professional</div>
              <div class="price">
                <span class="dollar">$</span>
                <h1>99<span class="suffix">.99</span></h1>
              </div>
              <h5>Per Month</h5>
            </div>
            <div class="body">
              <p>25 Analytics <span class="suffix">Campaign</span></p>
              <p>1,300 Change <span class="suffix">Keywords</span></p>
              <p>Social Media <span class="suffix">Reviews</span></p>
              <p>1 Free <span class="suffix">Optimization</span></p>
              <p>24/7 <span class="suffix">Support</span></p>
            </div>
            <div class="footer">
              <a href="#" class="btn btn-pricing btn-block">Subscribe</a>
            </div>
          </div>
        </div>

      </div>
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <!-- Banner info -->
  <div class="page-section banner-info">
    <div class="wrap bg-image" style="background-image: url(../assets/img/bg_pattern.svg);">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 py-3 pr-lg-5 wow fadeInUp">
            <h2 class="title-section">SEO to Improve Brand <br> Visibility</h2>
            <div class="divider"></div>
            <p>We're an experienced and talented team of passionate consultants who breathe with search engine marketing.</p>
            
            <ul class="theme-list theme-list-light text-white">
              <li>
                <div class="h5">SEO Content Strategy</div>
                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor</p>
              </li>
              <li>
                <div class="h5">B2B SEO</div>
                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor</p>
              </li>
            </ul>
          </div>
          <div class="col-lg-6 py-3 wow fadeInRight">
            <div class="img-fluid text-center">
              <img src="resources/img/banner_image_2.svg" alt="">
            </div>
          </div>
        </div>
      </div>
    </div> <!-- .wrap -->
  </div> <!-- .page-section -->

  <!-- Blog -->
  <div class="page-section">
    <div class="container">
      <div class="text-center wow">
        <h2 class="title-section">크몽을 200% 활용하는 법</h2>
        <div class="subhead">크몽까지 내 능력으로 만드는 콘텐츠</div>
        <div class="divider mx-auto"></div>
      </div>

      <div class="row mt-5">
        <div class="col-lg-4 py-3 wow">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="resources/img/blog/blog-1.jpg" alt="">
              </div>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="#">크몽 전문가 가이드</a></h5>
              <div class="post-date">전문가 인증부터 정산까지 크몽 전문가 등록의 모든 것</div>
            </div>
          </div>
        </div>
        
        <div class="col-lg-4 py-3 wow">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="resources/img/blog/blog-2.jpg" alt="">
              </div>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="#">마켓? 엔터프라이즈?</a></h5>
              <div class="post-date">내 프로젝트에 더 맞는 서비스를 쉽게 고르는 방법</div>
            </div>
          </div>
        </div>

        <div class="col-lg-4 py-3 wow">
          <div class="card-blog">
            <div class="header">
              <div class="post-thumb">
                <img src="resources/img/blog/blog-3.jpg" alt="">
              </div>
            </div>
            <div class="body">
              <h5 class="post-title"><a href="#">6월 신규 전문가 소개</a></h5>
              <div class="post-date">카테고리 매니저가 추천하는 라이징 전문가</div>
            </div>
          </div>
        </div>

        <div class="col-12 mt-4 text-center wow">
          <a href="blog.html" class="btn btn-primary">더 보러가기</a>
        </div>
      </div>
    </div>
  </div>

  <footer class="page-footer bg-image" style="background-image: url(resources/img/world_pattern.svg);">
    <div class="container">
      <div class="row mb-5">
        <div class="col-lg-3 py-3">
          <h3>SEOGram</h3>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero amet, repellendus eius blanditiis in iusto eligendi iure.</p>

          <div class="social-media-button">
            <a href="#"><span class="mai-logo-facebook-f"></span></a>
            <a href="#"><span class="mai-logo-twitter"></span></a>
            <a href="#"><span class="mai-logo-google-plus-g"></span></a>
            <a href="#"><span class="mai-logo-instagram"></span></a>
            <a href="#"><span class="mai-logo-youtube"></span></a>
          </div>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Company</h5>
          <ul class="footer-menu">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Career</a></li>
            <li><a href="#">Advertise</a></li>
            <li><a href="#">Terms of Service</a></li>
            <li><a href="#">Help & Support</a></li>
          </ul>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Contact Us</h5>
          <p>203 Fake St. Mountain View, San Francisco, California, USA</p>
          <a href="#" class="footer-link">+00 1122 3344 5566</a>
          <a href="#" class="footer-link">seogram@temporary.com</a>
        </div>
        <div class="col-lg-3 py-3">
          <h5>Newsletter</h5>
          <p>Get updates, news or events on your mail.</p>
          <form action="#">
            <input type="text" class="form-control" placeholder="Enter your email..">
            <button type="submit" class="btn btn-success btn-block mt-2">Subscribe</button>
          </form>
        </div>
      </div>

      <p class="text-center" id="copyright">Copyright &copy; 2020. This template design and develop by <a href="https://macodeid.com/" target="_blank">MACode ID</a></p>
    </div>
  </footer>

<script src="resources/js/jquery-3.5.1.min.js"></script>

<script src="resources/js/bootstrap.bundle.min.js"></script>

<script src="resources/js/google-maps.js"></script>

<script src="resources/vendor/wow/wow.min.js"></script>

<script src="resources/js/theme.js"></script>
  
</body>
</html>