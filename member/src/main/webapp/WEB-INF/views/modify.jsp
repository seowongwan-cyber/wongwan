<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�Խ���</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<form action="modify" method="post">
	<body>
		<br>
		<Br>
		<br>
		<br>
		<Br>
		<center>
			<table>
				<tr>
					<td>&nbsp;</td>
					<td align="center">ȸ����ȣ</td>
					<td><input name="unum" value="${memberVO.unum}"
						readonly="readonly" size="50" maxlength="100"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">���̵�</td>
					<td><input name="userid" value="${memberVO.userid}" size="50"
						maxlength="50"></td>
					<td>&nbsp;</td>
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td align="center">ȸ���̸�</td>
					<td><input name="username" value="${memberVO.username}" size="50"
						maxlength="50"></td>
					<td>&nbsp;</td>
					
				</tr>
								<tr>
					<td>&nbsp;</td>
					<td align="center">��й�ȣ</td>
					<td><input name="userpw" value="${memberVO.userpw}" size="50"
						maxlength="50"></td>
					<td>&nbsp;</td>
					
				</tr>
				<tr height="1" bgcolor="#dddddd">
					<td colspan="4"></td>
				</tr>


				<tr align="center">
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
			</table>
			<button type="submit">�Ϸ�</button>
		</center>
</form>
</body>
</html>