<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SLiPP :: 질문하기</title>

<%@ include file="/include/header.jspf" %>

</head>
<body>
	<%@ include file="/include/navigation.jspf" %>

    <div class="container">
        <div class="row">
            <div class="span8">
                <section id="typography">
                <div class="page-header">
                    <h1>질문하기</h1>
                </div>
                
                <form name="question" method="post" action="/qna/create.next">
                    <table>

            		<c:choose>
						<c:when test="${not empty user}">
									<tr>
										<td>사용자 아이디 : ${user.userId}</td>

										<td><input type="hidden" name="writer" value="${user.userId}"></td>
									</tr>
									<tr>
                        <tr>
                            <td>제목</td>
                            <td><input type="text" name="title" class="span7"></td>
                        </tr>
                        <tr>
                            <td>내용</td>
                            <td><textarea name="contents" rows="5" class="span7"></textarea></td>
                        </tr>
                        
		     		</c:when>
						<c:otherwise>
									<td>로그인을 해주세요</td>
						</c:otherwise>
					</c:choose>
                        
                        
                    </table>
                    <input type="submit" class="btn btn-primary pull-right" value="질문하기" />
                </form>
            </div>
        </div>
    </div>
    
<%@ include file="/include/footer.jspf" %>    
</body>
</html>