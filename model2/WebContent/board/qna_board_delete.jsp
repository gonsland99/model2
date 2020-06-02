<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int board_num=(int)request.getAttribute("board_num");
	String nowPage = (String)request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC게시판</title>
<style>
	#passForm{
		width:400px;
		margin: auto;
		border: 1px solid orange;
	}
</style>
</head>
<body>
	<section id="passForm">
		<form name="deleteForm" action="boardDeletePro.do?board_num=<%=board_num %>" method="post">
			<input type="hidden" name="page" value ="<%=nowPage %>"/>
			<table>
				<tr>
					<td>
						<label for="board_pass">글 비밀번호:</label>
					</td>
					<td>
						<input id = "board_pass" name="board_pass" type="password">
					</td>
				</tr>
				<tr>
<!-- 					<td> -->
<!-- 						<input type="submit" value = "삭제"/>&nbsp;&nbsp; -->
<!-- 						<input type="button" value="돌아가기" onClick="javascript:history.go(-1)"/> -->
<!-- 					</td> -->
				</tr>
			</table>
			<article>
				<button type ="submit">삭제</button>&nbsp;&nbsp;
				<button type="button" onClick="histoy.back();">돌아가기</button>
			</article>
		</form>
	</section>
</body>
</html>