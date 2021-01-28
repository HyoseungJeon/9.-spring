<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<%@ include file="../header/header.jspf" %>

<!-- Main -->
<main id="main" class="index-main">
    <div class="container">

        <h2 class="page-title text-center">${foundClub.name}</h2>

		<form class="form-inline" action="${ctx}/club/modify" method="post">
		<input type="hidden" name="name" value="${foundClub.name }"/>
        <div class="panel panel-bordered">
            <div class="panel-body">
                <div class="content">
                    
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="exampleInputName2" class="title">창설일</label>
                                    <jsp:useBean id="dateValue" class="java.util.Date"></jsp:useBean>
                        			<jsp:setProperty property="time" name="dateValue" value="${foundClub.foundationTime }"/>
                        			<%-- <fmt:formatDate pattern="yyyy-MM-dd" value="${dateValue }"/> --%>
                                    <input readonly name="foundationTime" type="text" class="form-control" id="exampleInputName2" placeholder="" 
                                    value="${foundClub.foundationTime }"/>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <!-- <label for="exampleInputName2" class="title">회원수</label>
                                    <p>3</p> -->
                                </div>
                            </div>
                        </div>
                    
                </div>

                <div class="content">
                    <div class="title">소개</div>

                    <div class="content-inner">
                        <textarea name="intro" class="form-control" rows="15" cols="145">${foundClub.intro }</textarea>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="content">
            <div class="row btn-action">
                <div class="col-sm-12">
                    <a href="${ctx }" class="btn btn-default">
                        <i class="fas fa-list"></i> 목록
                    </a>
                    <div class="fl-right">
                        <button type="submit" class="btn btn-primary btn-bordered">
                            <i class="fas fa-check"></i> 수정 완료
                        </button>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>
</main>
<!-- // Main -->

<%@ include file="../footer/footer.jspf" %>
</body>

</html>



