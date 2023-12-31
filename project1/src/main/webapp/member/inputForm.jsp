<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="/project1/resource/css/style.css" rel="stylesheet">
<script src="/project1/resource/js/script.js"></script>
</head>

<body>
<div class="join-wrap">
	<form action="inputPro.jsp" method="post" name="userinput" onsubmit="return inputCheck();">
		<h2 class="login-logo" onclick="location='/project1/news/main.jsp'">CODENEWS</h2>
		<div>
			<table>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" name="id">
						<input type="button" class="check-btn" name="confirmId" value="중복확인" onclick="openConfirmId(this.form)">
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw" /></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="pwCheck" /></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td><input type="text" name="nick" /></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="text" name="birthdate" /></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" /></td>
				</tr>
				<tr>
					<td>핸드폰번호</td>
					<td><input type="text" name="tel" /></td>
				</tr>
			</table>
		</div>
		<div class="buttom-wrap">
			<input type="submit" class="submit-btn" value="회원가입" />
			<input type="button" class="white-btn" value="취소" onclick="location='/project1/news/main.jsp'"/>
		</div>
	</form>
	</div>
</body>
</html>