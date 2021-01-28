<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<%@ include file="../header/header.jspf" %>

<!-- Main -->
<main id="main" class="index-main">
    <div class="container">

        <h2 class="page-title text-center">회원가입</h2>

        <div class="content">
            <div class="panel panel-bordered">
                <div class="panel-body">
                    <div class="content">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">이메일</label>
                                <div class="col-sm-5">
                                    <p>
                                        ${foundMember.email}
                                    </p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">이름</label>
                                <div class="col-sm-5">
                                    <p>
                                        ${foundMember.name}
                                    </p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">닉네임</label>
                                <div class="col-sm-5">
                                    <p>
                                        ${foundMember.nickname}
                                    </p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">휴대번호</label>
                                <div class="col-sm-5">
                                    <p>
                                        ${foundMember.phoneNumber}
                                    </p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">생년월일</label>
                                <div class="col-sm-5">
                                    <p>
                                        ${foundMember.birthDay}
                                    </p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">주소</label>
                                <div class="col-sm-10">
                                    <div class="table-wrap table-responsive">
                                        <table class="table text-center">
                                            <thead>
                                            <tr>
                                                <th class="text-center">구분</th>
                                                <th class="text-center">우편번호</th>
                                                <th class="text-center">지번 주소</th>
                                                <th class="text-center">도로명 주소</th>
                                                <th class="text-center">국가</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <th scope="row" class="text-center">집</th>
                                                <td>123456</td>
                                                <td>독산동 1234</td>
                                                <td>독산로 18길</td>
                                                <td>대한민국</td>
                                            </tr>
                                            <tr>
                                                <th scope="row" class="text-center">회사</th>
                                                <td>123456</td>
                                                <td>독산동 1234</td>
                                                <td>독산로 18길</td>
                                                <td>대한민국</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="row btn-action">
                <div class="col-sm-12">
                    <div class="fl-right">
                        <button class="btn btn-default">
                            <i class="fas fa-edit"></i> 수정
                        </button>
                        <button class="btn btn-danger btn-bordered">
                            <i class="fas fa-times"></i> 탈퇴
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- // Main -->

<%@ include file="../footer/footer.jspf" %>
</body>

</html>



