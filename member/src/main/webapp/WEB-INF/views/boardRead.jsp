<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page session="false"%>

<!DOCTYPE html>
<html>
<head>
<title>글읽기</title>
</head>
<form>
	<body>
		<br>
		<br>
		<br>
		<br>
		<Br>
		<center>
			<table>
				<tr>
					<td>&nbsp;</td>
					<td align="center">글번호</td>
					<td><input name="bno" value="${boardVO.bno}"
						readonly="readonly" size="50" maxlength="100"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">제목</td>
					<td><input name="title" value="${boardVO.title}" size="50"
						maxlength="50"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">작성자</td>
					<td><input name="userid" value="${boardVO.userid}" size="50"
						maxlength="50"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">내용</td>
					<td><textarea name="content" cols="50" rows="13">${boardVO.content}</textarea></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr height="1" bgcolor="#82B5DF">
					<td colspan="4"></td>
				</tr>
				<tr align="center">
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
			</table>
			<button type="submit" formaction="modify" formmethod="get">수정</button>
			<button type="submit" formaction="remove" formmethod="post">삭제</button>
			<button type="submit" formaction="listAll" formmethod="get">목록</button>
	</body>
</form>
</html>
