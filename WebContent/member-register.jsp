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
                                    <input type="email" class="form-control" id="inputEmail3" placeholder="이메일">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">이름</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="이름">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">닉네임</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="닉네임">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
                                <div class="col-sm-5">
                                    <input type="password" class="form-control" id="inputPassword3" placeholder="비밀번호">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-2 control-label">비밀번호 확인</label>
                                <div class="col-sm-5">
                                    <input type="password" class="form-control" id="inputPassword3" placeholder="비밀번호 확인">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">휴대번호</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="휴대번호">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-2 control-label">생년월일</label>
                                <div class="col-sm-5">
                                    <input type="text" class="form-control" id="inputEmail3" placeholder="생년월일">
                                </div>
                            </div>
                            <div class="row">
            					<div class="col-sm-12">
                					<div class="btn-action text-right">
                						<input type="reset" class="btn btn-primary btn-bordered" value="취소">
                    					<input type="submit" class="btn btn-primary btn-bordered" value="가입">
                					</div>
            					</div>
        					</div>
                        </form>
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



