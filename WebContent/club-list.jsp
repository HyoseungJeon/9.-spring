<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<%@ include file="../header/header.jspf"%>

<!-- Main -->
<main id="main" class="index-main">
    <div class="container">

        <h2 class="page-title text-center">나의 클럽</h2>

        <div class="content">
            <div class="search-form">
                <form action="">
                    <div class="form-group">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="검색어를 입력하세요.">
                            <div class="input-group-btn">
                                <button type="button" class="btn btn-primary"><span
                                        class="glyphicon glyphicon-search"></span></button>
                            </div><!-- /btn-group -->
                        </div><!-- /input-group -->
                    </div>
                </form>
            </div>

            <div class="row btn-action">
                <div class="col-sm-12">
                    <div class="fl-right">
                        <button class="btn btn-default">
                            <i class="fas fa-plus"></i>
                            등록
                        </button>
                    </div>
                </div>
            </div>

            <div class="table-wrap">
                <table class="table text-center">
                    <thead>
                    <tr>
                        <th class="text-center">No</th>
                        <th class="text-center">클럽명</th>
                        <th class="text-center">창설일</th>
                        <th class="text-center">회원수</th>
                        <th class="text-center">관리</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row" class="text-center">1</th>
                        <td>Java 클럽</td>
                        <td>20. 1. 3</td>
                        <td>3</td>
                        <td>
                            <button class="btn btn-default btn-sm">
                                수정
                            </button>
                            <button class="btn btn-default btn-sm">
                                삭제
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row" class="text-center">2</th>
                        <td>트래킹 클럽</td>
                        <td>20. 1. 6</td>
                        <td>15</td>
                        <td>
                            <button class="btn btn-basic btn-sm">
                                탈퇴하기
                            </button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>
<!-- // Main -->

<%@ include file="../footer/footer.jspf" %>


</html>



