<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>header</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${path}/resources/img/favicon.png" rel="icon">
<link href="${path}/resources/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${path}/resources/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link href="${path}/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${path}/resources/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="${path}/resources/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="${path}/resources/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="${path}/resources/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link href="${path}/resources/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${path}/resources/css/style.css" rel="stylesheet">
<!-- 로그인 폼 css -->
<link href="${path}/resources/css/loginForm.css" rel="stylesheet">
<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- 부트스트랩에서 제공하고 있는 스타일 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- 부트스트랩에서 제공하고 있는 스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>  
<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 얼럿 CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
<!-- Default theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
<!-- Semantic UI theme -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>

<!-- FontAwesome -->
<script src="https://kit.fontawesome.com/845fa7ca1e.js" crossorigin="anonymous"></script>

<!-- jQuery 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
<!-- JavaScript -->
<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

<!-- =======================================================
  * Template Name: Hidayah - v4.7.0
  * Template URL: https://bootstrapmade.com/hidayah-free-simple-html-template-for-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
	<header id="header" class="fixed-top header-inner-pages" >
		<div
			class="container d-flex align-items-center justify-content-between">

			<h1 class="logo">
				<a href="./">CHECKMATE</a>
			</h1>

			<nav id="navbar" class="navbar">
				<ul>
					<li class="dropdown"><a href="#"><span>Drop Down</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="list.si">정보공유</a></li>
							<li class="dropdown"><a href="#"><span>Deep Drop
										Down</span> <i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Deep Drop Down 1</a></li>
									<li><a href="#">Deep Drop Down 2</a></li>
									<li><a href="#">Deep Drop Down 3</a></li>
									<li><a href="#">Deep Drop Down 4</a></li>
									<li><a href="#">Deep Drop Down 5</a></li>
								</ul></li>
							<li><a href="#">Drop Down 2</a></li>
							<li><a href="#">Drop Down 3</a></li>
							<li><a href="#">Drop Down 4</a></li>
						</ul></li>
					<li class="dropdown"><a href="#"><span>Drop Down</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="#">Drop Down 1</a></li>
							<li class="dropdown"><a href="#"><span>Deep Drop
										Down</span> <i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Deep Drop Down 1</a></li>
									<li><a href="#">Deep Drop Down 2</a></li>
									<li><a href="#">Deep Drop Down 3</a></li>
									<li><a href="#">Deep Drop Down 4</a></li>
									<li><a href="#">Deep Drop Down 5</a></li>
								</ul></li>
							<li><a href="#">Drop Down 2</a></li>
							<li><a href="#">Drop Down 3</a></li>
							<li><a href="#">Drop Down 4</a></li>
						</ul></li>
					<li class="dropdown"><a href="#"><span>Drop Down</span> <i
							class="bi bi-chevron-down"></i></a>
						<ul>
							<li><a href="#">Drop Down 1</a></li>
							<li class="dropdown"><a href="#"><span>Deep Drop
										Down</span> <i class="bi bi-chevron-right"></i></a>
								<ul>
									<li><a href="#">Deep Drop Down 1</a></li>
									<li><a href="#">Deep Drop Down 2</a></li>
									<li><a href="#">Deep Drop Down 3</a></li>
									<li><a href="#">Deep Drop Down 4</a></li>
									<li><a href="#">Deep Drop Down 5</a></li>
								</ul></li>
							<li><a href="#">Drop Down 2</a></li>
							<li><a href="#">Drop Down 3</a></li>
							<li><a href="#">Drop Down 4</a></li>
						</ul></li>
					<li><div style="padding: 0 70px;"></div></li>
					<li><a class="nav-link scrollto" href="#">Login</a></li>
					<li><a class="nav-link scrollto" href="#">Join</a></li>

					<c:choose>
						<c:when test="${ empty loginUser }">
							<li><a class="nav-link scrollto" data-toggle="modal" data-target="#loginModal">Login</a></li>
							<li><a class="nav-link scrollto" href="memberEnrollForm.me">Join</a></li>
						</c:when>
						<c:otherwise>
							<li><a class="nav-link scrollto" href="#">${loginUser.userNick}</a></li>
							<li><a class="nav-link scrollto" href="#">마이페이지</a></li>
							<li><a class="nav-link scrollto" href="logout.me">LOGOUT</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
				<i class="bi bi-list mobile-nav-toggle"></i>
			</nav>
		</div>
	</header>
	
	<script>
    	window.Kakao.init('25def9456817be2bd9d449ded95b8362');
    	
    	function kakaoLogin(){
        	window.Kakao.Auth.login({
        		scope:'profile_nickname,profile_image,account_email',
        		success: function(authObj){
        			console.log(authObj);
        			window.Kakao.API.request({
        				url:'/v2/user/me',
        				success: res => {
        					const kakao_account = res.kakao_account;
        					console.log(kakao_account);
        				}
        			});
        		}
        	});
        	
    	};
    	
    
    </script>
	
	<!-- 얼럿 -->
	<c:if test="${not empty alertMsg}">
			<script>
				alertify.alert("서비스 요청 성공 ","${alertMsg}");
			</script>
			<c:remove var="alertMsg" scope="session"/>	
	</c:if>

</body>
</html>