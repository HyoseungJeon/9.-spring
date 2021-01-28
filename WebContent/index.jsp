<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>TravalClub</title>

    <!-- favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- custom css -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

</head>
<body>
<!-- Header -->
<header class="header">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                        aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">TravelClub</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#">나의 클럽</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${ctx }/member/register">가입</a></li>
                    <li>
                        <!-- trigger modal -->
                        <a href="javascript:;" data-toggle="modal" data-target="#myModal">
                            로그인
                        </a>

                        <!-- Modal -->
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close"><span
                                                aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">로그인</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form action="${ctx}/member/signin" method="post">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">이메일</label>
                                                <input name="email" type="email" class="form-control" id="exampleInputEmail1"
                                                       placeholder="이메일">
                                            </div>
                                            <div class="form-group">
                                                <label for="exampleInputPassword1">패스워드</label>
                                                <input name="password" type="password" class="form-control" id="exampleInputPassword1"
                                                       placeholder="패스워드">
                                            </div>
                                            <button class="btn btn-primary btn-block" type="submit">
                                                로그인
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>
</header>
<!-- // Header -->

<!-- Main -->
<div class="site-wrapper">
    <div class="site-wrapper-inner">
        <div class="cover-container">
            <div class="inner cover">
                <div class="text-center">
                    <img src="assets/img/team_work_icon_176894.svg" alt="" style="width: 200px;">
                </div>
                <h3 class="cover-heading text-center">
                    Travel Club에 오신걸 환영합니다.<br/>
                </h3>
                <p class="lead text-center">로그인 후 이용해주세요</p>
            </div>
        </div>
    </div>
</div>
<!-- // Main -->

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <div class="copyright">
            &copy; Copyright <strong><span>namoosori</span></strong> Co. All Rights Reserved.
        </div>
    </div>
</footer>
<!-- // Footer -->

<!-- jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- bootstrap JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>

</html>