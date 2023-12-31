<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.List"%>
<%@ page import="admin.AdminDAO"%>
<%@ page import="admin.AdminDTO"%>
<%@ page import="member.MemberDTO"%>

<link href="/project1/resource/css/style.css" rel="stylesheet">
<script src="/project1/resource/js/script.js"></script>

<%
	SimpleDateFormat sdf = new SimpleDateFormat("yy.MM.dd HH:mm:ss");
	List jList = null;

	AdminDAO dao = AdminDAO.getInstance();
	String memId = (String)session.getAttribute("memId");
	MemberDTO dto2 = dao.setMember(memId);
	
	int count = dao.getJCount();
	
	jList = dao.getJList();
	
	if(dto2.getMemberType() == null) {%>
		<script>
			alert("비정상적인 접근입니다.");
			history.go(-1);
		</script>
	<%} else if(dto2.getMemberType().equals("2")) {%>	
	<%} else {%>
		<script>
			alert("비정상적인 접근입니다.");
			history.go(-1);
		</script>
	<%}%>

<jsp:include page="/member/header.jsp" />

<title>기자신청 리스트</title>
<center><h2>기자신청 리스트</h2></center>

<hr />
<br />

<center><h3>기자신청 목록(<%=count%>)</h3></center>

<form>
	<table align="center" border="1" cellspacing="0">
		<tr height="30">
			<td align="center" width="50">타입</td>
			<td align="center" width="200">언론사</td>
			<td align="center" width="200">아이디</td>
			<td align="center" width="200">이메일</td>
			<td align="center" width="200">신청일</td>
			<td align="center" width="100">승인/거절</td> 
		</tr>
	</table>
	<table action="journalistPro.jsp" align="center" border="1" cellspacing="0">
<%	for(int i = 0; i < jList.size(); i++) {
		AdminDTO dto = (AdminDTO)jList.get(i);%>
		<%if(dto.getResultType().equals("0")) {%>
		<tr height="20">
			<td align="center" width="50"><%=dto.getMemberType()%></td>
			<td align="center" width="200"><%=dto.getPress()%></td>
			<td align="center" width="200"><%=dto.getId()%></td>
			<td align="center" width="200"><%=dto.getEmail()%></td>
			<td align="center" width="200"><%=sdf.format(dto.getReg())%></td>
			<td align="center" width="100">
				<input type="button" value="승인" onclick="location='journalistListPro.jsp?id=<%=dto.getId()%>'" />
				<input type="button" value="거절" onclick="location='journalistListDeny.jsp?id=<%=dto.getId()%>'" />
			</td>
		</tr>
		<%}%>
<%	} %>
	</table>
</form>

<jsp:include page="/member/footer.jsp"></jsp:include>